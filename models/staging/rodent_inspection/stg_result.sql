SELECT 
	ROW_NUMBER() OVER() AS RESULT_DIM_ID,
	JOB_ID,
	JOB_PROGRESS,
	RESULT
FROM `group5-proj-4400.rodent_inspections.src_rodent_insp`