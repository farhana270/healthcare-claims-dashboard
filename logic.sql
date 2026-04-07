ALTER TABLE claims ADD COLUMN readmission_flag INT DEFAULT 0;
UPDATE claims c1
SET readmission_flag = 1
WHERE EXISTS (
    SELECT 1 FROM claims c2
    WHERE c1.patient_id = c2.patient_id
    AND c2.admission_date > c1.discharge_date
    AND c2.admission_date <= c1.discharge_date + INTERVAL '30 days'
);

SELECT readmission_flag, COUNT(*) 
FROM claims
GROUP BY readmission_flag;

	