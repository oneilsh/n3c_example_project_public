#* pneumonia_expired_demographics:
#*   attr:
#*     fillcolor: '3'
#*     shape: hexagon
#*   desc: "Collates information on those \nwho at any point had pneumonia, or\ndied,\
#*     \ regardless of which came first.\n"
#*   ext: py
#*   inputs:
#*   - person
#*   - pneumonia_conditions
#*   - death
#* 
def pneumonia_expired_demographics(person, pneumonia_conditions, death):
    res = pneumonia_conditions.drop(pneumonia_conditions.data_partner_id).join(person, ["person_id"], "inner").drop(person.person_id)
    res = res.drop(res.data_partner_id).join(death, ["person_id"], "inner").drop(res.person_id)

    print("test")
    return res
