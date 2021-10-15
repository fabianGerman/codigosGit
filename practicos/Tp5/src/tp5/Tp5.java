/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp5;

import dominio.Turno;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import manager.managerTurno;

/**
 *
 * @author Shell
 */
public class Tp5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        List<Turno> lista = new ArrayList<>();
        /*Registrar Turnos*/
        System.out.println("REGISTRAR TURNOS");
        lista = managerTurno.agregarTurnos();
        /*Lista los Pacientes faltanes segun una hora ingresada*/
        LocalTime horaconsulta = LocalTime.of(9,0);
        System.out.println("LISTAR PACIENTES FALTANTES SEGUN HORA: "+horaconsulta);
        for(Turno tur : lista){
            tur.pacienteListarFaltante(horaconsulta);
        }
        /*Paciente segun horario*/
        System.out.println("--------------------------------------------------");
        horaconsulta = LocalTime.of(10,30);
        System.out.println("MOSTRAR PACIENTE SEGUN HORA: "+horaconsulta);
        for(Turno tur : lista){
            tur.pacienteSegunHorario(horaconsulta);
        }
        /*Tiempo estimado de espera segun hora*/
        System.out.println("--------------------------------------------------");
        horaconsulta = LocalTime.of(9,30);
        System.out.println("TIEMPO DE ESPERA SEGUN HORA DE ATENCION: "+horaconsulta);
        for(Turno tur : lista){
            tur.pacienteTiempoEspera("40254856",horaconsulta);
        }
        /*Registrar fin Turno*/
        System.out.println("--------------------------------------------------");
        LocalTime horafin = LocalTime.of(9,40);
        System.out.println("REGISTRAR FIN DE TURNO: "+horafin);
        lista = managerTurno.pacienteRegistrarFinTurno(horafin, lista);
        /*Lista los Pacientes faltanes segun una hora ingresada*/
        System.out.println("--------------------------------------------------");
        horaconsulta = LocalTime.of(10,10);
        System.out.println("LISTAR PACIENTES FALTANTES SEGUN HORA: "+horaconsulta);
        for(Turno tur : lista){
            tur.pacienteListarFaltante(horaconsulta);
        }
        /*Tiempo estimado de espera segun hora*/
        System.out.println("--------------------------------------------------");
        horaconsulta = LocalTime.of(10,20);
        System.out.println("TIEMPO DE ESPERA SEGUN HORA DE ATENCION: "+horaconsulta);
        for(Turno tur : lista){
            tur.pacienteTiempoEspera("40254856",horaconsulta);
        }
    }
    
}
