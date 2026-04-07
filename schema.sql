CREATE TABLE patients AS
SELECT DISTINCT
    ROW_NUMBER() OVER () AS patient_id,
    name,
    age,
    gender,
    blood_type
FROM raw_data;

CREATE TABLE hospitals AS
SELECT DISTINCT
    ROW_NUMBER() OVER () AS hospital_id,
    hospital,
    doctor
FROM raw_data;

CREATE TABLE claims AS
SELECT 
    ROW_NUMBER() OVER () AS claim_id,
    p.patient_id,
    h.hospital_id,
    r.admission_date,
    r.discharge_date,
    r.medical_condition,
    r.admission_type,
    r.insurance_provider,
    r.billing_amount,
    r.room_number,
    r.medication,
    r.test_results,
    (r.discharge_date - r.admission_date) AS length_of_stay
FROM raw_data r
JOIN patients p 
    ON r.name = p.name
JOIN hospitals h 
    ON r.hospital = h.hospital;
	