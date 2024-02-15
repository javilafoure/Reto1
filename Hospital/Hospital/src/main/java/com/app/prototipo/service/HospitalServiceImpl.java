package com.app.prototipo.service;

import com.app.prototipo.entity.Hospital;
import com.app.prototipo.repo.HospitalRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Optional;


@Service
public class HospitalServiceImpl implements HospitalService{


    @Autowired
    private HospitalRepo repo;
    @Override
    @Transactional(readOnly = true)
    public Iterable<Hospital> findAll() {
        return repo.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Optional<Hospital> findById(int idHospital) {
        return repo.findById(idHospital);
    }

    @Override
    @Transactional
    public Hospital agragar(Hospital hospital) {
        return repo.save(hospital);
    }

    @Override
    @Transactional
    public void eliminar(int idHospital) {
        repo.deleteById(idHospital);

    }

}
