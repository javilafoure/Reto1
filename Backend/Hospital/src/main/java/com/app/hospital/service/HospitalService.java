package com.app.hospital.service;

import com.app.hospital.entity.Hospital;
import com.app.hospital.repository.HospitalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class HospitalService {
    @Autowired
    HospitalRepository repo;
    public Optional<Hospital> getById(int idHospital){
        return repo.SP_HOSPITAL_LISTAR(idHospital);
    }
    public void SP_HOSPITAL_ELIMINAR(int idHospital){
        repo.SP_HOSPITAL_ELIMINAR(idHospital);
    }
}
