export class Game extends Phaser.Scene{
    constructor(){
        super('gameScene');
        
    }

    init(){
        console.log("Trabajo Practico de Web");
        this.box = null;
        this.plataformTop = null;
        this.plataformBottom = null;
        this.portal = null;
        this.picksTop = null;
        this.picksBottom = null;
        this.picksSide = null;
        this.contador = 0;
        this.isGravityInverted = false;
        this.isFlapMode = false;
        this.jumpCount = 0;
        this.rotateAnim = null;
        this.musica = null;
    }

    preload(){
        this.load.image('box','./src/assets/box.png');
        this.load.image('rocket','./src/assets/rocket.png')
        this.load.image('plataform','./src/assets/ground.png');
        this.load.image('spikeTop','./src/assets/spikeTop.png');
        this.load.image('spikeBottom','./src/assets/spikeBottom.png');
        this.load.image('spikeSide','./src/assets/spikeSide.png');
        this.load.image('portalGravity','./src/assets/portalGravity.png');
        this.load.image('portal', './src/assets/portal.png');
        this.load.image('portalFlap','./src/assets/portalFlap.png');
        
        this.load.audio('musica', './src/sound/Antimatter.mp3');
    }

    create(){
        //musica
        this.musica = this.sound.add('musica');
        this.musica.play();

       //caja
        this.box = this.physics.add.image(300,300,'box');
        //this.box.setData('box',true);
        this.box.setCollideWorldBounds(true);//evita que el objeto salga del area del juego
        this.box.setBounce(0.1)// configura la fuerza del rebote
        this.box.setVelocity(100,10);//asigna velocidad para los ejes x, y
        this.box.body.gravity.y = 4000;
        //plataforma
        this.plataformTop = this.physics.add.sprite(0,0,'plataform').setOrigin(0,0).setImmovable(true);//parte de arriba
        this.plataformBottom = this.physics.add.sprite(0,600,'plataform').setOrigin(0,1).setImmovable(true);//parte de abajo
        this.physics.add.collider(this.box, this.plataformTop,this.resetJumpCount,null,this);
        this.physics.add.collider(this.box, this.plataformBottom,this.resetJumpCount,null,this);
        this.plataformTop.setScale(1.5,1);//modifica el alto y ancho de la plataforma de arrbia
        this.plataformBottom.setScale(1.5,1);//modifica el alto y ancho de la plataforma de abajo
        
        //picas
        this.picksTop = this.physics.add.group();
        this.picksBottom = this.physics.add.group();
        //cursor
        this.cursors = this.input.keyboard.createCursorKeys();
        this.velocidad = 3;
        this.velocidadPica = 1.5;

        
        this.input.on('pointerdown', this.onAction, this);
    } 

    update(){
        this.mover();
        this.contador++;
        this.generarPicks();
        this.generatePortal();
        this.picksTop.setVelocityX(-90);
        this.picksBottom.setVelocityX(-98);
        if(this.isFlapMode && this.input.activePointer.isDown){
            this.onAction();
        }
    }

    mover(){//moviento del jugador
        if(this.cursors.left.isDown){
            this.box.setVelocityX(-300);
        }else if(this.cursors.right.isDown){
            this.box.setVelocityX(300);
        }else if(this.cursors.space.isDown){
            this.box.setVelocityY(-300);
            this.rotate(180);
        }else{
            this.box.setVelocityX(0);//cuando se suelte la tecla presionada el objeto quedo fijo en el lugar
        }
    }


    colisionarPicks(ball, picks){
        ball.disableBody(true,true);
    }

    generarPicks(){
        this.physics.add.collider(this.box,this.picksBottom,this.gameOver,null,this);
        this.physics.add.collider(this.box,this.picksTop,this.gameOver,null,this);
        this.generateTop();
        this.generateButtom();
    }

    generateButtom(){//genera los picos de abajo
        if(this.contador % 500 == 0){
            this.picksBottom = this.physics.add.group({
                key: ['spikeBottom'],
                frameQuantity: 1,
                gridAlign: {
                    width: 10,
                    heigth: 4,
                    cellWidth: 67,
                    cellHeight: 34,
                    x: 750,
                    y: 450
                }
            });
        }else if(this.contador % 800 == 0){
            this.picksBottom = this.physics.add.group({
                key: ['spikeBottom'],
                frameQuantity: 2,
                gridAlign: {
                    width: 10,
                    heigth: 4,
                    cellWidth: 67,
                    cellHeight: 34,
                    x: 750,
                    y: 450
                }
            });
        }
    }

    generateTop(){//genera los picos de arriba
        if(this.contador % 2000 == 0){
            this.picksTop = this.physics.add.group({
                key: ['spikeTop'],
                frameQuantity: 1,
                gridAlign: {
                    width: 10,
                    heigth: 4,
                    cellWidth: 67,
                    cellHeight: 34,
                    x: 750,
                    y: 150
                }
            });
        }else if(this.contador % 2500 == 0){
            this.picksTop = this.physics.add.group({
                key: ['spikeTop'],
                frameQuantity: 2,
                gridAlign: {
                    width: 10,
                    heigth: 4,
                    cellWidth: 67,
                    cellHeight: 34,
                    x: 750,
                    y: 150
                }
            });
        }
    }

    generatePortal(){//creacion del portal
        if(this.contador % 1400 == 0){
            this.portal = this.physics.add.sprite(750,460,'portalGravity').setOrigin(0,1);
            this.portal.body.velocity.x = -400;
            this.physics.add.overlap(this.box, this.portal, this.invertGravity,null,this);
        }else if(this.contador % 2000 == 0){
            this.portal = this.physics.add.sprite(750,460,'portal').setOrigin(0,1);
            this.portal.body.velocity.x = -400;
            this.physics.add.overlap(this.box, this.portal, this.gravity,null,this);
        }else if(this.contador % 3000 == 0){
            this.portal = this.physics.add.sprite(750,460,'portalFlap').setOrigin(0,1);
            this.portal.body.velocity.x = -400;
            this.physics.add.overlap(this.box, this.portal, this.alterGravity,null,this);
        }
    }

    gravity(){
        this.box.setTexture('box');
        this.isGravityInverted = false;
        this.box.body.gravity.y = 4000;
        
    }

    invertGravity(){
        this.box.setTexture('box');
        this.isGravityInverted = true;
        this.box.body.gravity.y = -4000;
    }

    alterGravity(){
        this.isGravityInverted = false;
        this.isFlapMode = true;
        this.box.setTexture('rocket');
        this.box.body.gravity.y = 2000;
    }

    onAction(){
        if(this.isFlapMode){
            this.box.body.velocity.y = -600;
            return;
        }
        if(this.jumpCount >= 2){
            return;
        }
        this.jumpCount++;
        if(this.isGravityInverted){
            this.box.body.velocity.y = 1100;
            this.rotate(-180);
            console.log("entro 1");
            
        }else{
            this.box.body.velocity.y = -1100;
            this.rotate(180);
            console.log("entro 2");
        }
    }

    resetJumpCount(){
        this.jumpCount = 0;
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

      gameOver(){
          this.physics.pause();
          this.musica.pause();
          this.box.visible = false;
          this.time.addEvent({
              delay:1000,
              callback:()=>{
                  this.scene.restart();
              },
              loop:false
          })
      }
}