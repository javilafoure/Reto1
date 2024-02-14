package com.app.prototipo.service;

import com.app.prototipo.entity.Hospital;

import java.util.Optional;

public interface HospitalService {
    public Iterable<Hospital> findAll();
    public Optional<Hospital> findById(int idHospiral);
    public Hospital agragar(Hospital hospital);
    public  void eliminar(int idHospital);
}
