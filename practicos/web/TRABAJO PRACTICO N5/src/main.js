class MainScene extends Phaser.Scene {

    constructor() {
        super("MainScene");
        this.box=null;
        this.groundBottom = null;
        this.groundTop = null;
        this.jumpCount = 0;
        this.isGravityInverted = false;
    }

    preload() {
        this.load.image('box', './assets/box1.png');
        this.load.image('ground', './assets/ground.png');
    }
    create() {
        this.box = this.physics.add.sprite(300, 300, 'box');
        this.groundBottom = this.physics.add.sprite(0, 600,'ground')
        .setOrigin(0,1)
        .setImmovable(true);
        this.groundTop = this.physics.add.sprite(0, 0, 'ground')
        .setOrigin(0,0)
        .setImmovable(true);   
        this.box.body.gravity.y = 4000;

        this.physics.add.collider(this.box, this.groundBottom);
        this.physics.add.collider(this.box, this.groundTop);

        this.input.on('pointerdown', this.jump,this);
        this.input.keyboard.on('keydown-I', this.invertGravity, this);
    }

    update() {
        if(this.box.body.touching.down || this.box.body.touching.up){
            this.jumpCount = 0;
        }

    }

    jump(){
       if(this.jumpCount >=2){
           return;
       }

        this.jumpCount++;
        if(this.isGravityInverted){
        this.box.body.velocity.y = 900;
        } else{
            this.box.body.velocity.y= -900;
        }
    }

    invertGravity(){
        if(this.isGravityInverted){
            this.isGravityInverted = false
            this.box.body.gravity.y = 4000;
        } else {
            this.isGravityInverted = true
            this.box.body.gravity.y = -4000;
        }
    }
}

const config = {
    type: Phaser.AUTO,
    parent: 'myGame',
    width: 600,
    height: 600,
    backgroundColor: "#03e3fc",
    physics: {
      default: 'arcade',
      arcade: {
        // debug: true
      }
    },
    scene: MainScene
  }

  new Phaser.Game(config);
