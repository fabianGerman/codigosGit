import { SecondScene } from "./SecondScene";
export class Firstscene extends Phaser.Scene { 
    
    constructor(){
        super('Firstscene');
        this.box = null;
        this.picks = null;
        this.plataformUp = null;
        this.plataformDown = null;
        this.portal = null;
        this.contador = 0;

        this.secondScene = new SecondScene(this);
    }
    //inicializa datos
    init(){
        console.log('primera escena')
    }
    //precarga de datos
    preload(){
        this.load.image('box', './assets/img/box.png');
        this.load.image('ground', './assets/img/ground.png');
        this.load.image('spikeTop','./assets/img/spikeTop.png');
        this.load.image('spikeBottom','./assets/img/spikeBottom.png');
        this.load.image('spikeSide', './assets/img/spikeSide.png');
        this.load.image('portal', './assets/img/portal.png');
        this.secondScene.preload();
    }
    //instanciar los assets
    create(){
        
        //caja
        
        this.box = this.physics.add.image(300,300,'box');
        this.box.setData('box', true);
        this.box.setCollideWorldBounds(true);//evita que el objeto salga del area del juego
        this.box.setBounce(0.1)// configura la fuerza del rebote
        this.box.setVelocity(100,10);//asigna velocidad para los ejes x, y
        this.box.body.gravity.y = 4000;

        //plataforma
        this.plataformUp = this.physics.add.sprite(0,0,'ground').setOrigin(0,0).setImmovable(true);//parte de arriba
        this.plataformDown = this.physics.add.sprite(0,600,'ground').setOrigin(0,1).setImmovable(true);//parte de abajo
        this.physics.add.collider(this.box, this.plataformUp);
        this.physics.add.collider(this.box, this.plataformDown);
        this.plataformUp.setScale(1.5,1);//modifica el alto y ancho de la plataforma de arrbia
        this.plataformDown.setScale(1.5,1);//modifica el alto y ancho de la plataforma de abajo
        this.cursors = this.input.keyboard.createCursorKeys();
        this.velocidad = 3;
        this.velocidadPica = 1.5;

        //picas
        this.picksBottom = this.physics.add.group();
        this.picksTop = this.physics.add.group();

        //segunda escena
        this.secondScene.create();

    }
    /**
     * bucle del juego
     * 
     */
    update(){
        
        this.mover();
        this.contador++;
        this.generarPicks();
        this.generatePortal();
        this.picksBottom.setVelocityX(-90);
        this.picksTop.setVelocityX(-100);
        
    }

    generarPicks(){//genera los picos de arriba y abajo
        this.physics.add.collider(this.box, this.picksBottom, this.colisionarObjeto, null, null);
        this.physics.add.collider(this.box, this.picksTop, this.colisionarObjeto, null, null);
        this.generateButtom();
        this.generateTop();
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

    colisionarObjeto(ball, picks){//colision con los picos
        ball.disableBody(true,true);
        
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
                    y: 250
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
                    y: 350
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

    endGame(completed = false){
        if(!completed){
            this.scene.start('SecondScene');
        }
    }

}