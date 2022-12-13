--* pneumonia_concept_set:
--*   desc: Extract concepts childred on pneumonia (codeset ID 980588199)
--*   ext: sql
--*   inputs:
--*   - input_concept_set_members
--* 
SELECT concept_id 
FROM input_concept_set_members
WHERE codeset_id = 980588199 and is_most_recent_version = true
