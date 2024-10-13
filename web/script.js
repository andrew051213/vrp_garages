const garages = new Vue({
    el: '#main-garages',
    data: {
        active: false,
        vehicles: [],
        searchedVehicles: '',
        searchedVehiclesList: []
        // activeVehicleName: ''
    },

    mounted() {
        window.addEventListener('message', this.handleMessage);
        window.addEventListener('keydown', this.handleKeyDown);
    },

    computed: {
        filteredVehicles() {
            const searchTerm = this.searchedVehicles.toLowerCase();

            return this.vehicles.filter(vehicle => 
                vehicle.name.toLowerCase().includes(searchTerm)
            );
        }
    },

    methods: {
        post(endpoint, data) {
            fetch(`https://${GetParentResourceName()}/${endpoint}`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify(data)
            }).then(resp => resp.json()).then(resp => {
                console.log('Response:', resp);
            }).catch(error => {
                console.error('Error:', error);
            });
        },

        destroy() {
            $("#main-garages").addClass('fade-out');

            setTimeout(() => {
                this.active = false;
            }, 800);
            
            this.post('vrp-garages:setFocus', [false, false]);
        },

        handleMessage(event) {
            const data = event.data;

            switch (data.type) {
                case 'openGarage':
                    this.active = true;

                    this.vehicles = data.data.vehicles;

                    this.post('vrp-garages:setFocus', [true, true]);

                    break;
            }
        },

        handleKeyDown(event) {
            if (event.key === 'Escape') {
                this.destroy();
            }
        },

        onChange(value) {
            this.searchedVehicles = value;
        },

        spawnVehicle(vehicle) {
            this.destroy();

            this.post('vrp-garages:spawnVehicle', vehicle);
        },

        // onSelect(vehicle) {
        //     this.activeVehicleName = vehicle.name;
        // }
    }
});