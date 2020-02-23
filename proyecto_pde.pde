 PantallaCarga c;
// dar instrucciones en la pantalla de seleion , quitar el ph ahi mismo aomodar y listo
void setup(){
  size(600,300);
  c = new PantallaCarga();
}

void draw(){   
    c.Cambio();
}

void keyReleased(){ //Funcion de evento que se llama cada que se quita el dedo de una tecla
  if (c.p == 1)
  {
    if(key == ENTER)
      c.turnoSe = 2;
  }
}

//clases-----------------------------------------------------------------------------
    class PantallaCarga{
      int p=0;
      int jugador1 = 0, jugador2 = 0;
      int seleccion = 1;
      int VidaJ1 = 100, VidaJ2 = 100;
      int AJ1, AJ2 ,HJ1 ,HJ2;
      int turno = 1;
      int turnoSe = 1;
    
      PantallaCarga(){}
      
      void Cambio(){
        if (p == 0)
        pan1();
        
         if (p == 1)
        pan2();
        
        if (p == 2)
        pan3();
        
        if (p == 3)
        pan4();
        
        
       }
      //----------------------------------------------------------------------------------------------------------------------
      void pan1(){
   //cielo<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    fill(#3EADFF);
    rect(0, 0, width, height);
     fill(255, 235);
   //nubes<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    rect(120,70, 20, 20);
    fill(255, 235);
    rect(95,70, 20, 20);
     fill(255, 235);
    rect(107,59, 20, 20);
    
     rect(520,70, 20, 20);
    fill(255, 235);
    rect(495,70, 20, 20);
     fill(255, 235);
    rect(507,59, 20, 20);
   //pasto<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    fill(#62C148);
    rect(0, 200, width,200);
    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    //Nombre del juego
    fill(0);
        textSize(50);
    textAlign(CENTER);
    text("El mundo al cuadrado",300, 150);
    
    textSize(50);
    textAlign(CENTER);
    text("de Chilly Willy",300, 200);
    
     textSize(20);
    textAlign(CENTER);
    text("Apahurra la tecla 1",450, 290);
    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      if(keyPressed)
      if(key=='1')
      p++;
      }
      //-------------------------------------------------------------------------------------------------------------
      void pan2(){
      //seleccion de personajes
       background(#979598);
       noStroke();
        //Chilly Willy...................................
        fill(255);
    rect(CENTER,CENTER,100,100,0,20,0,0);
    fill(0);
    rect(CENTER,-CENTER,100,50,0,20,0,0);
    fill(0);
    textSize(12);
    text("Chilly Willy",50,120);
    textSize(12);
    text("PODER: 6",50,132);
    textSize(12);
    text("Habilidad: 5",50,142);
    textSize(18);
    text("Q", 54,70);
    
        //Polar..........................................
        fill(255);
    rect(0,200,100,100,0,20,20,0);
    fill(0);
    textSize(12);
    text("Polar",50,170);
    textSize(12);
    text("PODER: 8",50,182);
     textSize(12);
    text("Habilidad: 5",50,192);
    textSize(18);
    text("W", 50,250);
    
    //Pez Miguel.........................................
     fill(#FFBF0D);
    rect(500,0,100,100,0,20,20,20);
    fill(0);
    textSize(12);
    text("Pez Miguel",550,120);
    textSize(12);
    text("PODER: 5",550,132);
    textSize(12);
    text("Habilidad: 6",550,142);
    textSize(18);
    text("E", 550,60);
    
    //Gusanito...........................................
     fill(#00953A);
    rect(500,200,100,100,20,20,20,20);
     fill(0);
    textSize(12);
    text("Gusanito",550, 170);
    textSize(12);
    text("PODER: 5",550,182);
     textSize(12);
    text("Habilidad: 6",550,192);
    fill(255);
    textSize(18);
    text("R", 550,250);
    
    //Ramon Salmon.......................................
     fill(#001D83);
    rect(250,100,100,100);
     fill(0);
    textSize(12);
    text("Ramon Salmon",300,220);
    textSize(12);
    text("PODER: 9",300,232);
    textSize(12);
    text("Habilidad: 4",300,242);
    fill(250);
    textSize(18);
    text("T", 300,150);
    
    fill(0);
    textSize(13);
    text("Mueve con las teclas indicadas, selecciona con ENTER", 300,50);
   
    seleccion();
    
       if(jugador2 != 0)
            p = 2;
    }
    //--------------------------------------------------------------------------------------------------------------
      void pan3(){
        AsignarPoder();
    //cielo <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    fill(#3EADFF);
    rect(0, 0, width, height);
     fill(255, 235);
   //nubes<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    rect(120,70, 20, 20);
    fill(255, 235);
    rect(95,70, 20, 20);
     fill(255, 235);
    rect(107,59, 20, 20);
    
     rect(520,70, 20, 20);
    fill(255, 235);
    rect(495,70, 20, 20);
     fill(255, 235);
    rect(507,59, 20, 20);
   //pasto<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    fill(#62C148);
    rect(0, 200, width,200);
    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    // batalla
         batalla();
         instrucciones();
         MostrarVida();
         
      if(VidaJ1 <= 0 || VidaJ2 <=0)
        p++;
      }
      //----------------------------------------------------------------------------------------------------------
      void pan4(){
      //final y regreso
       background(#979598);
       if(VidaJ1>0){
         textSize(30);
    text("Jugador 1",300,100);  
       }
         textSize(30);
        if(VidaJ2>0){
    text("Jugador 2",300,100);
    
       }
       //acomodarlos con diferentes coordenadas
       
       
       
       fill(0);
        textSize(30);
    textAlign(CENTER);
    text("Has ganado el trono",300,200);  
     textSize(30);
    textAlign(CENTER);
    text("FELICIDADES",300,250);
    textSize(15);
       text("Apachhurra la tecla 2, para la revancha",400,280);
       
      if(keyPressed)
        if(key=='2')
        {
       jugador1 = 0;
       jugador2 = 0;
       seleccion = 1;
       VidaJ1 = 100;
       VidaJ2 = 100;
       turno = 1;
       turnoSe = 1;
       p=0;
        }
      
         }
      
      
      //----------------------------------------------------------------------------------------------------------
      void seleccion(){//CREACION DE CUADRO ROOOOOOJOOOO y azul.
        //Chilly Willy
        if(seleccion == 1)
        {
          noFill();
          if(turnoSe == 1)
            stroke(100, 0, 0, 250);
          if(turnoSe == 2)
            stroke(0, 0, 100, 250);
          
          strokeWeight(5);
          rect(CENTER,CENTER,100,100,0,20,0,0);
          noStroke();
        }
        //Polar
        if(seleccion == 2)
        {
          noFill();
          if(turnoSe == 1)
            stroke(100, 0, 0, 250);
          if(turnoSe == 2)
            stroke(0, 0, 100, 250);
          
          strokeWeight(5);
          rect(0,200,100,100,0,20,20,0);
          noStroke();
        }
        //pez Miguel
        if(seleccion == 3)
        {
          noFill();
          if(turnoSe == 1)
            stroke(100, 0, 0, 250);
          if(turnoSe == 2)
            stroke(0, 0, 100, 250);
          
          strokeWeight(5);
          rect(500,0,100,100,0,20,20,20);
          noStroke();
        }
        //Gusanito
        if(seleccion == 4)
        {
          noFill();
          if(turnoSe == 1)
            stroke(100, 0, 0, 250);
          if(turnoSe == 2)
            stroke(0, 0, 100, 250);
          
          strokeWeight(5);
          rect(500,200,100,100,20,20,20,20);
          noStroke();
        }
        //Ramon Salmon
        if(seleccion == 5)
        {
          noFill();
          if(turnoSe == 1)
            stroke(100, 0, 0, 250);
          if(turnoSe == 2)
            stroke(0, 0, 100, 250);
          
          strokeWeight(5);
          rect(250,100,100,100);
          noStroke();
        }
        
        if(keyPressed)
        {
          if(key == 'q')
            seleccion = 1;
          
          if(key == 'w')
            seleccion = 2;
            
          if(key == 'e')
            seleccion = 3;
            
           if(key == 'r')
            seleccion = 4;
            
           if(key == 't')
            seleccion = 5;
      
            
           if(key == ENTER)
           {
             if(turnoSe == 1)
               jugador1 = seleccion;
               
             if(turnoSe == 2)
               jugador2 = seleccion;   
           }
        }    
         
        //print(jugador1,jugador2,"  ");
      }
  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      void batalla(){
        
        if(jugador1 == 1)
        {
          push();
          translate(0,100);
                fill(255);
                rect(CENTER,CENTER,100,100,0,20,0,0);
                fill(0);
                rect(CENTER,-CENTER,100,50,0,20,0,0);
                fill(0);
                textSize(12);
                text("Chilly Willy",50,120);
                 
           pop();
           
        }
        
        if(jugador1 == 2)
        {
          push();
          translate(0,-100);
                    fill(255);
                    rect(0,200,100,100,0,20,20,0);
                    fill(0);
                    textSize(12);
                    text("Polar",50,170);
                    
           pop();
        }
        if(jugador1 == 3){
          push();
          translate(-500,100);
              fill(#FFBF0D);
              rect(500,0,100,100,0,20,20,20);
              fill(0);
              textSize(12);
              text("Pez Miguel",550,120);
              
          pop();
        }
        if(jugador1 == 4){
          push();
          translate(-500,-100);
                   fill(#00953A);
                    rect(500,200,100,100,20,20,20,20);
                     fill(0);
                    textSize(12);
                    text("Gusanito",550, 170);
                    
           pop();
        }
        if(jugador1 == 5){ 
          push();
          translate(-250,0);
                 fill(#001D83);
                rect(250,100,100,100);
                 fill(0);
                textSize(12);
                text("Ramon Salmon",300,220);
                
           pop();
        }
        //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
        if(jugador2 == 1)
        {
          push();
          translate(500,100);
          fill(255);
                rect(CENTER,CENTER,100,100,0,20,0,0);
                fill(0);
                rect(CENTER,-CENTER,100,50,0,20,0,0);
                fill(0);
                textSize(12);
                text("Chilly Willy",50,120);
                 
        pop();
        }
        if(jugador2 == 2){
          push();
          translate(500,-100);
              fill(255);
              rect(0,200,100,100,0,20,20,0);
              fill(0);
              textSize(12);
              text("Polar",50,170);
              
          pop();
        }
        
        if(jugador2 == 3){
          push();
          translate(0,100);
              fill(#FFBF0D);
              rect(500,0,100,100,0,20,20,20);
              fill(0);
              textSize(12);
              text("Pez Miguel",550,120);
              
          pop();
        }
        
        if(jugador2 == 4){
          push();
          translate(0,-100);
           fill(#00953A);
           rect(500,200,100,100,20,20,20,20);
           fill(0);
           textSize(12);
           text("Gusanito",550, 170);
            
            
          pop();
        }
        
        if(jugador2 == 5){ 
          push();
          translate(250,0);
              fill(#001D83);
              rect(250,100,100,100);
               fill(0);
              textSize(12);
              text("Ramon Salmon",300,220);
              
            
          pop();
        }
        
        
        
      }
      //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      void instrucciones(){
        fill(0);
        textSize(20);
        textAlign(CENTER);
        text("¡¡¡¡Atanquense con las normas del reino, por turnos!!!",300,50);
        
        fill(0);
        textSize(15);
        text("Pichucale 'z' para atacar",100,250);
        text("Pichucale 'x' para habilidad",120,270);
        
        text("Pichucale 'n' para atacar",500,250);
        text("Pichucale 'm' para habilidad",480,270);
      }
      //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
      void MostrarVida(){
        
        //VIDA Jugador1    
        fill(0,0,255);
        rect(120, 125, VidaJ1, 20); 
        
         //Vida JUGADOR 2
        rect(380, 125, VidaJ2, 20);
        
        if(keyPressed)
        {
          if(turno == 1)
            {
              if (key == 'z')
              {
                VidaJ2 = VidaJ2 - AJ1;
                turno = 2;
              }
  
              if (key == 'x')
              {
                VidaJ2 = VidaJ2 - HJ1;
                turno = 2;  
              }
            }
         if(turno == 2)
           {
              if (key == 'n')
              {
                VidaJ1 = VidaJ1 - AJ2;
                turno = 1;
              }
                
              if (key == 'm')
              {
                VidaJ1 = VidaJ1 - HJ2;
                turno = 1;
              }
           }
        }
      }
      
      void AsignarPoder(){
        
        switch(jugador1){
          case 1:
          AJ1 =  6;
          HJ1 = 5;
          break;
          
          case 2:
          AJ1 =  8;
          HJ1 = 5;
          break;
          
          case 3:
          AJ1 = 5 ;
          HJ1 = 6;
          break;
          
          case 4:
          AJ1 =  5;
          HJ1 = 6;
          break;
          
          case 5:
          AJ1 =  9;
          HJ1 = 4;
          break;
        }
        
        switch(jugador2){
          case 1:
          AJ2 =  6;
          HJ2 = 5;
          break;
          
          case 2:
          AJ2 =  8;
          HJ2 = 5;
          break;
          
          case 3:
          AJ2 =  5;
          HJ2 = 6;
          break;
          
          case 4:
          AJ2 =  5;
          HJ2 = 6;
          break;
          
          case 5:
          AJ2 =  9;
          HJ2 = 4;
          break;
        }          
      }
      
    
  }
    
