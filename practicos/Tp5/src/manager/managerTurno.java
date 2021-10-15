/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manager;

import dominio.Medico;
import dominio.Paciente;
import dominio.Turno;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import util.AtencionUtil;

/**
 *
 * @author Shell
 */
public class managerTurno {
    
    public static List<Turno> agregarTurnos(){
        List<Turno> lista = new ArrayList<>();
        Paciente p1 = new Paciente();
        p1.setDni("28568985");
        p1.setNombre("Gonzalez Josefina");
        Medico m1 = new Medico();
        m1.setMatricula("ASCE444");
        m1.setNombre("Torres Jose Luis");
        Turno t1 = new Turno();
        t1.pacienteAgregarTurno(1,LocalTime.of(9, 0),null,p1,m1,0);
        lista.add(t1);
        Paciente p2 = new Paciente();
        p2.setDni("30548759");
        p2.setNombre("Gutierrez Ramon");
        Turno t2 = new Turno();
        t2.pacienteAgregarTurno(2,lista.get(lista.size()-1).getHoraAtencion().plusMinutes(AtencionUtil.tiempoAtencionMinutos[lista.get(lista.size()-1).getPosAtencion()]),null,p2,m1,1);
        lista.add(t2);
        Paciente p3 = new Paciente();
        p3.setDni("40254856");
        p3.setNombre("Ramos Rita");
        Medico m2 = new Medico();
        m2.setMatricula("BDCE658");
        m2.setNombre("Maidana Patricia");
        Turno t3 = new Turno();
        t3.pacienteAgregarTurno(3,lista.get(lista.size()-1).getHoraAtencion().plusMinutes(AtencionUtil.tiempoAtencionMinutos[lista.get(lista.size()-1).getPosAtencion()]),null,p3,m2,0);
        lista.add(t3);
        Paciente p4 = new Paciente();
        p4.setDni("40258476");
        p4.setNombre("Soliz Maria");
        Turno t4 = new Turno();
        t4.pacienteAgregarTurno(4,lista.get(lista.size()-1).getHoraAtencion().plusMinutes(AtencionUtil.tiempoAtencionMinutos[lista.get(lista.size()-1).getPosAtencion()]),null,p4,m2,2);
        lista.add(t4);
        return lista;
    }
    
    public static List<Turno> pacienteRegistrarFinTurno(LocalTime horarioFin,List<Turno> lista){
        int pos=0;
        int minutos=0;
        for(int i=lista.size()-1;i>=0;i--){
            minutos = (int) ChronoUnit.MINUTES.between(lista.get(i).getHoraAtencion(),horarioFin)
                    -AtencionUtil.tiempoAtencionMinutos[lista.get(i).getPosAtencion()];
            if(minutos>=0){
                lista.get(i).pacienteRegistrarFinTurno(horarioFin);
                pos=i;
                i=-1;
            }
        }
        for(int h = pos;h<lista.size();h++){
            lista.get(h).pacienteRetrasarTurno(minutos);
        }
        return lista;
    }
    
}
