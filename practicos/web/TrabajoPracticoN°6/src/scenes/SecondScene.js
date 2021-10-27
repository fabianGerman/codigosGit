class MainScene extends Phaser.Scene {

    constructor() {
        super('MainScene"');
  
    }
  
      init(){
  
        this.box = null;
        this.groundBottom = null;
        this.groundTop = null;
  
        this.jumpCount =0;
        this.isGravityInverted = false;
  
        this.brick = null;
        
        this.spikes =null;
  
        this.portal = null;
  
        this.musica = null;
        this.boomSound = null;
  
        this.isFlapMode=false;
        this.rotateAnim = null;
      }
  
    preload(){
        this.load.image('box', './assets/personaje.jpeg');
        this.load.image('rocket', './assets/avion.jpeg');
        this.load.image('groundBottom', './assets/mapa.jpg');
        this.load.image('groundTop', './assets/mapa.jpg');
        this.load.image('spikeBottom', './assets/pinchoinferior.png');
        this.load.image('spikeTop', './assets/pinchosuperior.png');
        this.load.image('spikeSide', './assets/pelota.png');
        this.load.image('portal', './assets/invertido.png');      
        this.load.image('fondo', './assets/fondo.jpg');
        this.load.image('portalGravity', './assets/modonave.png');
        this.load.image('brick', './assets/cubo3.jpeg');
        
        this.load.audio('musica', './assets/sounds/nivel1.mp3');
        this.load.audio('boom', './assets/sounds/boom.mp3');
      }
    create(){
        
      this.musica = this.sound.add('musica');
      this.musica.play();
      this.add.image(350,100, 'fondo');
      this.box = this.physics.add.sprite(1000*(3/8),300, 'box');
      this.groundBottom = this.physics.add.sprite(0, 600, 'groundBottom').setImmovable(true).setOrigin(0,1);
      this.groundTop = this.physics.add.sprite(0, 0, 'groundTop').setImmovable(true).setOrigin(0,0);
  
      this.box.body.gravity.y = 4000;
      this.physics.add.collider(this.box, this.groundBottom, this.resetJumpCount,null,this);
      this.physics.add.collider(this.box, this.groundTop, this.resetJumpCount,null,this);
  
      this.boomSound = this.sound.add('boom');
  
      this.brick = this.physics.add.group();
      for (let brick of brickList) {
        let positionX = 0;
        for (let i = 0; i < brick.quantity; i++) {
            //700 is the speed
            let brickAux = this.brick.create((brick.seconds * 700) + positionX, brick.y, 'brick').setOrigin(0, 1).setImmovable(true);
            positionX += brickAux.width;
        }
    }
    this.brick.setVelocityX(-700);
    this.physics.add.collider(this.box, this.brick, this.onTouchrBrick, null, this)
  
      this.spikes = this.physics.add.group();
      for (let spike of spikeBottomList) {
        let positionX = 0;
        for (let i = 0; i < spike.quantity; i++) {
            //700 is the speed
            let spikeAux = this.spikes.create((spike.seconds * 700) + positionX, spike.y, 'spikeBottom').setOrigin(0, 1);
            positionX += spikeAux.width;
        }
    }
  
    for (let spike of spikeSideList) {
      let positionX = 0;
      for (let i = 0; i < spike.quantity; i++) {
          //700 is the speed
          let spikeAux = this.spikes.create((spike.seconds * 700) + positionX, spike.y, 'spikeSide').setOrigin(0, 0);
          positionX += spikeAux.width;
      }
  }
  
    for (let spike of spikeTopList) {
      let positionX = 0;
      for (let i = 0; i < spike.quantity; i++) {
          //700 is the speed
          let spikeAux = this.spikes.create((spike.seconds * 700) + positionX, spike.y, 'spikeTop').setOrigin(0, 0);
          positionX += spikeAux.width;
      }
  }
      this.spikes.setVelocityX(-700);
  
      //this.physics.add.collider(this.box, this.spikes, this.gameOver,null,this)
      
      this.portal = this.physics.add.sprite(14 * 700, 465,'portal').setOrigin(0,1);
      this.portal.body.velocity.x = -400;
      this.portalGravity = this.physics.add.sprite(6*700,465,'portalGravity').setOrigin(0,1);
      this.portalGravity.body.velocity.x = -500;
      this.physics.add.overlap(this.box, this.portal, this.onChangeToFlap, null, this);
      this.physics.add.overlap(this.box, this.portalGravity, this.invertGravity, null, this);
  
      this.input.on('pointerdown', this.onAction, this);
      
    }
    update(){
      if(this.isFlapMode && this.input.activePointer.isDown){
        this.onAction();
      }
    }
    onAction() {
  
      if(this.isFlapMode){
        this.box.body.velocity.y = -600;
        return;
      }
      if(this.jumpCount >=2){
        return;
    }
  
     this.jumpCount++;
     if(this.isGravityInverted){
     this.box.body.velocity.y = 900;
     this.rotate(-180);
     } else{
         this.box.body.velocity.y= -900;
         this.rotate(180);
     }   
  }
    
    resetJumpCount(){
  
      this.jumpCount = 0;
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
  
    gameOver(){
      this.boomSound.play();
      this.musica.pause();
      this.physics.pause();
      this.box.visible = false;
  
      this.time.addEvent({
        delay:1000,
        callback: () => {
  
            this.scene.restart();
  
        },
        loop: false
      })
  }
  
    onChangeToFlap(){
    this.isFlapMode = true;
    this.box.setTexture('rocket');
    this.box.body.gravity.y=2000;
    }
    
    rotate(angleValue) {
      if (this.rotate){
      this.rotateAnim = this.tweens.add({
         targets: this.box, //your image that must spin
         angle: 360, //rotation value must be radian
         duration: 400,
         ease: 'Linear'
        });
      }else{
        this.rotateAnim.play();
        
      }
    }
    onTouchrBrick(){
      if(this.box.body.touching.right){
        this.gameOver();
      }else if(this.box.body.touching.up||(this.box.body.touching.down)){
        this.resetJumpCount();
      }
    }
  }
  
  
  const config={
    type: Phaser.AUTO,
    parent: 'game',
    width: 1000,
    height: 600,
    backgroundColor: "#03e3fc",
  
    physics: {
      default: 'arcade',
     
    },
    scene: MainScene
  }
  new Phaser.Game(config);
  