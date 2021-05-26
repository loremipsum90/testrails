import {Controller} from "stimulus"

export default class extends Controller {
	static targets = ["field", "map", "latitude", "longitude"]

	connect() {
		if (typeof (google) != "undefined") {
			this.initializeMap()
		}

	}

	initiliazeMap() {
		this.map()
		this.marker()
		this.autocomplete()
	}
	map() {
		if(this._map == undefined) {
		 this._map = new google.maps.Map(this.mapTarget,{
		 	center: new google.maps.LatLng(
		 		this.LatitudeTarget.value,
		 		this.longitudeTarget.value
		 		),
		 	zoom: 15
		 }) 
		}
		return this._map
	}
	marker() {}
	autocomplete() {}
}