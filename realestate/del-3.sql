select p.property_id, p.property_name, p.tag, p.price, p.no_of_bedrooms as BHK, a.description, b.area, b.zipcode from realestate_property p, realestate_address a, realestate_area b where p.address_id=a.address_id and a.area_id = b.area_id and p.price < 4000000 and p.price > 2000000; 
select p.property_name, p.price, a.description from realestate_property p, realestate_address a , realestate_area b where p.address_id=a.address_id and a.area_id=b.area_id and b.area='New Palasia' and p.tag='rent';
select a.user_id as agent_id, d.first_name as agent_firstname, d.last_name as agent_lastname, p.property_name, p.property_id , c.purchase_id , p.price, p.tag as property_type from realestate_agent a, realestate_property p, realestate_purchase c, realestate_person d where a.user_id=c.agent_id and a.agent_id = d.person_id and c.property_id=p.property_id;        