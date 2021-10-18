export class Game extends Phaser.Scene{
    constructor(){
        super('gameScene');
        this.box = null;
        this.plataformTop = null;
        this.plataformBottom = null;
        this.portal = null;
        this.picksTop = null;
        this.picksBottom = null;
        this.picksSide = null;
        this.contador = 0;
    }

    init(){
        console.log("Trabajo Practico de Web");
    }

    preload(){
        this.load.image('box','./src/assets/box.png');
        this.load.image('plataform','./src/assets/ground.png');
        this.load.image('spikeTop','./src/assets/spikeTop.png');
        this.load.image('spikeBottom','./src/assets/spikeBottom.png');
        this.load.image('spikeSide','./src/assets/spikeSide.png');
        this.load.image('portal','./src/assets/portal.png');
    }

    create(){
       
        this.box = this.physics.add.image(300,300,'box');
        this.box.setData('box',true);
        this.box.setCollideWorldBounds(true);//evita que el objeto salga del area del juego
        this.box.setBounce(0.1)// configura la fuerza del rebote
        this.box.setVelocity(100,10);//asigna velocidad para los ejes x, y
        this.box.body.gravity.y = 4000;
        
        this.plataformTop = this.physics.add.sprite(0,0,'plataform').setOrigin(0,0).setImmovable(true);//parte de arriba
        this.plataformBottom = this.physics.add.sprite(0,600,'plataform').setOrigin(0,1).setImmovable(true);//parte de abajo
        this.physics.add.collider(this.box, this.plataformTop);
        this.physics.add.collider(this.box, this.plataformBottom);
        this.plataformTop.setScale(1.5,1);//modifica el alto y ancho de la plataforma de arrbia
        this.plataformBottom.setScale(1.5,1);//modifica el alto y ancho de la plataforma de abajo
        this.cursors = this.input.keyboard.createCursorKeys();
        this.velocidad = 3;
        this.velocidadPica = 1.5;
     
        this.picksTop = this.physics.add.group();
        this.picksBottom = this.physics.add.group();
        this.cursors = this.input.keyboard.createCursorKeys();
    } 

    update(){
        this.mover();
        this.contador++;
        this.generarPicks();
        this.generatePortal();
        this.picksTop.setVelocityX(-90);
        this.picksBottom.setVelocityX(-98);
    }

    mover(){//moviento del jugador
        if(this.cursors.left.isDown){
            this.box.setVelocityX(-300);
        }else if(this.cursors.right.isDown){
            this.box.setVelocityX(300);
        }else if(this.cursors.space.isDown){
            this.box.setVelocityY(-500);
        }else{
            this.box.setVelocityX(0);//cuando se suelte la tecla presionada el objeto quedo fijo en el lugar
        }
    }


    colisionarPicks(ball, picks){
        ball.disableBody(true,true);
    }

    generarPicks(){
        this.physics.add.collider(this.box,this.picksBottom,this.colisionarPicks,null,null);
        this.physics.add.collider(this.box,this.picksTop,this.colisionarPicks,null,null);
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
        }else if(this.contador % 1200 == 0){
            this.picksBottom = this.physics.add.group({
                key: ['spikeBottom'],
                frameQuantity: 3,
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
        if(this.contador % 500 == 0){
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
        }else if(this.contador % 800 == 0){
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
        }else if(this.contador % 1200 == 0){
            this.picksTop = this.physics.add.group({
                key: ['spikeTop'],
                frameQuantity: 3,
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
            this.portal = this.physics.add.image(750, 300, 'portal');
            this.physics.add.collider(this.portal, this.plataformDown);
            this.physics.add.collider(this.box, this.portal);
            this.portal.setVelocityX(-100);
        }
        this.physics.add.collider(this.box, this.portal,this.colisionarPortal, null, null);
    }

    colisionarPortal(box, portal){
        box.disableBody(true, true);
        this.endGame(true);
    }
}