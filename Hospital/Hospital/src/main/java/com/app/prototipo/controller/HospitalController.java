package com.app.prototipo.controller;


import com.app.prototipo.entity.Hospital;
import com.app.prototipo.service.HospitalService;
import com.app.prototipo.service.HospitalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin({"http://localhost:4200"})
@RestController
@RequestMapping("/hospital")
public class HospitalController {
    @Autowired
    private HospitalService service;

    @GetMapping("/")
    public ResponseEntity<?> listar() {
        return ResponseEntity.ok().body(service.findAll());
    }

    @GetMapping("/listarId/{idHospital}")
    public ResponseEntity<?> listarId(@PathVariable int idHospital) {
        Optional<Hospital> o = service.findById(idHospital);
        if (o.isEmpty()) {
           return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(o.get());
    }

    @PostMapping
    public ResponseEntity<?> agregar(@RequestBody Hospital hospital) {
        Hospital hospitalDb = service.agragar(hospital);
        return ResponseEntity.status(HttpStatus.CREATED).body(hospitalDb);
    }
    @PutMapping("/editar/{idHospital}")
    public  ResponseEntity<?> editar(@RequestBody Hospital hospital, @PathVariable int idHospital){
        Optional<Hospital> o = service.findById(idHospital);
        if (o.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        Hospital hospitalDb = o.get();
        hospitalDb.setNombre(hospital.getNombre());
        hospitalDb.setIdGerente(hospital.getIdGerente());
        return ResponseEntity.status(HttpStatus.CREATED).body(service.agragar(hospitalDb));
    }
    @DeleteMapping("/eliminar/{idHospital}")
    public ResponseEntity<?> eliminar(@PathVariable int idHospital){
        service.eliminar(idHospital);
        return ResponseEntity.noContent().build();
    }



}






