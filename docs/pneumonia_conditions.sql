--* pneumonia_conditions:
--*   desc: Extracts matching pneumonia conditions from the condition_era input.
--*   ext: sql
--*   inputs:
--*   - pneumonia_concept_set
--*   - condition_era
--* 
SELECT *
FROM condition_era
INNER JOIN pneumonia_concept_set ON pneumonia_concept_set.concept_id = condition_era.condition_concept_id
