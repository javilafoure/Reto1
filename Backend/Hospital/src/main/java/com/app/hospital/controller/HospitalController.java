package com.app.hospital.controller;

import com.app.hospital.entity.Hospital;
import com.app.hospital.service.HospitalService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/hospital")
public class HospitalController  {
    @Autowired
    HospitalService service;



    @GetMapping("/listarId/{idHospital}")
    public ResponseEntity<Hospital> listarId(@PathVariable("idHospital") int idHospital){
        Optional<Hospital> hospital = service.getById(idHospital);
        return new ResponseEntity(hospital, HttpStatus.OK);
    }
    @DeleteMapping("/borrar/{idHospital}")
    public ResponseEntity<?> borrar(@PathVariable("idHospital")int idHospital){
        service.SP_HOSPITAL_ELIMINAR(idHospital);
        return new ResponseEntity("Hospital eliminado", HttpStatus.OK);
    }

}
