var app = new Vue({
	el: '#componentes',
	data: {
		componentes: ''
	},
	methods: {
		addComponent: function (comp) {
			if (!this.componentes.includes(comp)) {
				if (this.componentes != "" && this.componentes.length > 0) {
					this.componentes += "," + comp;
				} else {
					this.componentes += comp;
				}
			} else {
				if (this.componentes.length == 1) {
					this.componentes = "";
				} else {
					this.componentes = this.componentes.split(",").filter(el => el != comp).join(",");
				}
			}
		},
		addVerbal: function () {
			this.addComponent("V");
		},
		addGestual: function () {
			this.addComponent("G");
    },
    addFoco: function () {
    	this.addComponent("F");
    },
    addMaterial: function () {
    	this.addComponent("M");
    },
    addFocoDivino: function () {
    	this.addComponent("FD");
    },
  }
});