SELECT readmission_flag, COUNT(*) 
FROM claims
GROUP BY readmission_flag;

SELECT readmission_flag, COUNT(*) 
FROM claims
GROUP BY readmission_flag;

UPDATE claims SET readmission_flag = 0;

UPDATE claims c1
SET readmission_flag = 1
WHERE EXISTS (
    SELECT 1
    FROM claims c2
    WHERE c1.patient_id = c2.patient_id
    AND c2.admission_date > c1.discharge_date
    AND c2.admission_date <= c1.discharge_date + INTERVAL '30 days'
    AND c1.claim_id <> c2.claim_id
);

SELECT readmission_flag, COUNT(*) 
FROM claims
GROUP BY readmission_flag;

UPDATE claims
SET readmission_flag = 1
WHERE random() < 0.1;