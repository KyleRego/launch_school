function makeCar(rate, brakingRate) {
  return {
    speed: 0,
    rate,
    brakingRate,
    accelerate() {
      this.speed += this.rate;
    },
    brake() {
      this.speed -= this.brakingRate;
      if (this.speed < 0) {
        this.speed = 0;
      }
    },
  }
}

let hatchback = makeCar(9);