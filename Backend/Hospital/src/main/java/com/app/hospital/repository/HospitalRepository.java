package com.app.hospital.repository;

import com.app.hospital.entity.Hospital;
import jakarta.persistence.StoredProcedureQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface HospitalRepository extends JpaRepository<Hospital, Integer> {
    @Query(value = "{call SP_HOSPITAL_LISTAR(:idHospital)}", nativeQuery = true)
    Optional<Hospital> SP_HOSPITAL_LISTAR(@Param("idHospital") int idHospitalIN);

    @Query(value = "{call SP_HOSPITAL_ELIMINAR(:idHospital)}", nativeQuery = true)
    void SP_HOSPITAL_ELIMINAR(@Param("idHospital") int idHospitalIN);



}
