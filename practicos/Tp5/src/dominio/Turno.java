/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dominio;

import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

/**
 *
 * @author Shell
 */
public class Turno {
    private Integer idTurno;
    private LocalTime horaAtencion;
    private LocalTime horaFinAtencion;
    private Paciente paciente;
    private Medico medico;
    private int posAtencion;

    public Turno(){
    }

    public Integer getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(Integer idTurno) {
        this.idTurno = idTurno;
    }

    public LocalTime getHoraAtencion() {
        return horaAtencion;
    }

    public void setHoraAtencion(LocalTime horaAtencion) {
        this.horaAtencion = horaAtencion;
    }

    public LocalTime getHoraFinAtencion() {
        return horaFinAtencion;
    }

    public void setHoraFinAtencion(LocalTime horaFinAtencion) {
        this.horaFinAtencion = horaFinAtencion;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public Medico getMedico() {
        return medico;
    }

    public void setMedico(Medico medico) {
        this.medico = medico;
    }

    public int getPosAtencion() {
        return posAtencion;
    }

    public void setPosAtencion(int posAtencion) {
        this.posAtencion = posAtencion;
    }

    @Override
    public String toString() {
        return "Turno{"+this.paciente.toString()+",Hora Atencion: "+this.horaAtencion+"}";
    }
    
    
    public void pacienteAgregarTurno(Integer idTurno, LocalTime horaAtencion, LocalTime horaFinAtencion, Paciente paciente, Medico medico, int posAtencion) {
        this.idTurno = idTurno;
        this.horaAtencion = horaAtencion;
        this.horaFinAtencion = horaFinAtencion;
        this.paciente = paciente;
        this.medico = medico;
        this.posAtencion = posAtencion;
    }
    public void pacienteListarFaltante(LocalTime horario){
        int minutos = (int) ChronoUnit.MINUTES.between(horario,this.horaAtencion);
        if(minutos>=0){
            System.out.println(this.toString());
        }
    }
    public void pacienteSegunHorario(LocalTime horario){
        if(horario.equals(this.horaAtencion)){
            System.out.println(this.toString());
        }
    }
    public void pacienteRegistrarFinTurno(LocalTime horarioFin){
        this.horaFinAtencion = horarioFin;
    }
    public void pacienteRetrasarTurno(int minutosadicionales){
        this.horaAtencion = this.horaAtencion.plusMinutes(minutosadicionales);
    }
   
    public void pacienteTiempoEspera(String dni,LocalTime horarioconsulta){
        if(this.paciente.getDni().equals(dni)){
            int minutos = (int) ChronoUnit.MINUTES.between(horarioconsulta,this.horaAtencion);
            if(minutos>=0){
                int horaespera = minutos / 60;
                int minutosespera = minutos - horaespera * 60;
                System.out.println("Tiempo de espera HORAS: "+horaespera+" y MINUTOS: "+minutosespera);
            }else{
                System.out.println("El turno ya paso");
            }
        }
    }
    
}
