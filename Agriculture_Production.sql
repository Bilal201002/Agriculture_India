Show tables;

Select * from agriculture_dataset;

#Each Crop production every year

Select year,Round(sum(Rice_Production)) as Rice_Production,Round(sum(Wheat_Production)) as Wheat_Production,
Round(sum(Kharif_Sorghum_Production)) as Kharif_Sorghum_Production ,sum(Rabi_Sorghum_Production) as Rabi_Sorghum_Production,Round(sum(Sorghum_Production)) as 
Sorghum_Production,Round(sum(Pearl_Millet_Production)) as Pearl_Millet_Production,Round(sum(Maize_Production)) as Maize_Production,
Round(sum(Finger_Millet_Production)) as Finger_Millet_Production,Round(sum(Barley_Production)) as Barley_Production,Round(sum(Chickpea_Production)) as Chickpea_Production,
Round(sum(Pigeonpea_Production)) as Pigeonpea_Production,Round(sum(Pulses_Production)) as Pulses_Production,Round(sum(Groundnut_Production)) as Groundnut_Production,
Round(sum(Sesamum_Production)) as Sesamum_Production,Round(sum(Rapeseed_and_Mustard_Production)) as Rapeseed_and_Mustard_Production,
Round(sum(Safflower_Production)) as Safflower_Production,Round(sum(Castor_Production)) as Castor_Production,Round(sum(Linseed_Production)) as Linseed_Production,
sum(Sunflower_Production) as Sunflower_Production,sum(Soyabean_Production) as Soyabean_Production,Round(sum(Oilseeds_Production)) as Oilseeds_Production,
Round(sum(Sugarcane_Production)) as Sugarcane_Production,sum(Cotton_Production) as Cotton_Production from agriculture_dataset
group by year
order by Rice_Production desc,Wheat_production desc;

#Most crop Producing state in rice and wheat?

Select State_Name,Round(sum(Rice_Production)) as Rice_Production,Round(sum(Wheat_Production)) as Wheat_Production from agriculture_dataset
group by State_Name
order by Rice_Production desc,Wheat_Production desc;

#which crop has maximum production across all states?

Select Round(sum(Rice_Production)) as Rice_Production,Round(sum(Wheat_Production)) as Wheat_Production,
Round(sum(Kharif_Sorghum_Production)) as Kharif_Sorghum_Production ,sum(Rabi_Sorghum_Production) as Rabi_Sorghum_Production,Round(sum(Sorghum_Production)) as 
Sorghum_Production,Round(sum(Pearl_Millet_Production)) as Pearl_Millet_Production,Round(sum(Maize_Production)) as Maize_Production,
Round(sum(Finger_Millet_Production)) as Finger_Millet_Production,Round(sum(Barley_Production)) as Barley_Production,Round(sum(Chickpea_Production)) as Chickpea_Production,
Round(sum(Pigeonpea_Production)) as Pigeonpea_Production,Round(sum(Pulses_Production)) as Pulses_Production,Round(sum(Groundnut_Production)) as Groundnut_Production,
Round(sum(Sesamum_Production)) as Sesamum_Production,Round(sum(Rapeseed_and_Mustard_Production)) as Rapeseed_and_Mustard_Production,
Round(sum(Safflower_Production)) as Safflower_Production,Round(sum(Castor_Production)) as Castor_Production,Round(sum(Linseed_Production)) as Linseed_Production,
sum(Sunflower_Production) as Sunflower_Production,sum(Soyabean_Production) as Soyabean_Production,Round(sum(Oilseeds_Production)) as Oilseeds_Production,
Round(sum(Sugarcane_Production)) as Sugarcane_Production,sum(Cotton_Production) as Cotton_Production from agriculture_dataset;

#Crop wise maximum and minimum land required?

Select Round(sum(Rice_Area)) as Rice_Area,Round(sum(Wheat_Area)) as Wheat_Area,
Round(sum(Kharif_Sorghum_Area)) as Kharif_Sorghum_Area ,sum(Rabi_Sorghum_Area) as Rabi_Sorghum_Area,Round(sum(Sorghum_Area)) as 
Sorghum_Area,Round(sum(Pearl_Millet_Area)) as Pearl_Millet_Area,Round(sum(Maize_Area)) as Maize_Area,
Round(sum(Finger_Millet_Area)) as Finger_Millet_Area,Round(sum(Barley_Area)) as Barley_Area,Round(sum(Chickpea_Area)) as Chickpea_Area,
Round(sum(Pigeonpea_Area)) as Pigeonpea_Area,Round(sum(Pulses_Area)) as Pulses_Area,Round(sum(Groundnut_Area)) as Groundnut_Area,
Round(sum(Sesamum_Area)) as Sesamum_Area,Round(sum(Rapeseed_and_Mustard_Area)) as Rapeseed_and_Mustard_Area,
Round(sum(Safflower_Area)) as Safflower_Area,Round(sum(Castor_Area)) as Castor_Area,Round(sum(Linseed_Area)) as Linseed_Area,
sum(Sunflower_Area) as Sunflower_Area,sum(Soyabean_Area) as Soyabean_Area,Round(sum(Oilseeds_Area)) as Oilseeds_Area,
Round(sum(Sugarcane_Area)) as Sugarcane_Area,sum(Cotton_Area) as Cotton_Area from agriculture_dataset;

#how much each crop contribute in percentage from overall production?
Select Round((Rice_Production/Total_Production)*100,1) as Rice_contribution,Round((Wheat_Production/Total_Production)*100,1) as Wheat_contribution,
Round((Kharif_Sorghum_Production/Total_Production)*100,1) as Kharif_Sorghum_contribution,Round((Rabi_Sorghum_Production/Total_Production)*100,1) 
as Rabi_Sorghum_contribution,
Round((Pearl_Millet_Production/Total_Production)*100,1) as Pearl_Millet_contribution,Round((Maize_Production/Total_Production)*100,1) as Maize_contribution,
Round((Finger_Millet_Production/Total_Production)*100,1) as Finger_Millet_contribution,Round((Barley_Production/Total_Production)*100,1) as Barley_contribution,Round((Chickpea_Production/Total_Production)*100,1) as Chickpea_contribution,
Round((Pigeonpea_Production/Total_Production)*100,1) as Pigeonpea_contribution,Round((Pulses_Production/Total_Production)*100,1) as Pulses_contribution,
Round((Groundnut_Production/Total_Production)*100,1) as Groundnut_contribution,Round((Sesamum_Production/Total_Production)*100,1) as Sesamum_contribution,
Round((Rapeseed_and_Mustard_Production/Total_Production)*100,1) as Rapeseed_contribution,Round((Safflower_Production/Total_Production)*100,1) as Safflower_contribution,
Round((Castor_Production/Total_Production)*100,1) as Castor_contribution,Round((Linseed_Production/Total_Production)*100,1) as Linseed_contribution,
Round((Sunflower_Production/Total_Production)*100,1) as Sunflower_contribution,Round((Soyabean_Production/Total_Production)*100,1) as Soyabean_contribution,
Round((Oilseeds_Production/Total_Production)*100,1) as Oilseeds_contribution,Round((Sugarcane_Production/Total_Production)*100,1) as Sugarcane_contribution,
Round((Cotton_Production/Total_Production)*100,1) as Cotton_contribution from
(Select *,Rice_Production+Wheat_Production+Kharif_Sorghum_Production+Rabi_Sorghum_Production+Sorghum_Production+Pearl_Millet_Production+Maize_Production
+Finger_Millet_Production+Barley_Production+Chickpea_Production+Pigeonpea_Production+Pulses_Production+Groundnut_Production+Sesamum_Production+Rapeseed_and_Mustard_Production
+Safflower_Production+Castor_Production+Linseed_Production+Sunflower_Production+Soyabean_Production+Oilseeds_Production+ Sugarcane_Production
+Cotton_Production as Total_Production from (Select Round(sum(Rice_Production)) as Rice_Production,Round(sum(Wheat_Production)) as Wheat_Production,
Round(sum(Kharif_Sorghum_Production)) as Kharif_Sorghum_Production ,sum(Rabi_Sorghum_Production) as Rabi_Sorghum_Production,Round(sum(Sorghum_Production)) as 
Sorghum_Production,Round(sum(Pearl_Millet_Production)) as Pearl_Millet_Production,Round(sum(Maize_Production)) as Maize_Production,
Round(sum(Finger_Millet_Production)) as Finger_Millet_Production,Round(sum(Barley_Production)) as Barley_Production,Round(sum(Chickpea_Production)) as Chickpea_Production,
Round(sum(Pigeonpea_Production)) as Pigeonpea_Production,Round(sum(Pulses_Production)) as Pulses_Production,Round(sum(Groundnut_Production)) as Groundnut_Production,
Round(sum(Sesamum_Production)) as Sesamum_Production,Round(sum(Rapeseed_and_Mustard_Production)) as Rapeseed_and_Mustard_Production,
Round(sum(Safflower_Production)) as Safflower_Production,Round(sum(Castor_Production)) as Castor_Production,Round(sum(Linseed_Production)) as Linseed_Production,
sum(Sunflower_Production) as Sunflower_Production,sum(Soyabean_Production) as Soyabean_Production,Round(sum(Oilseeds_Production)) as Oilseeds_Production,
Round(sum(Sugarcane_Production)) as Sugarcane_Production,sum(Cotton_Production) as Cotton_Production from agriculture_dataset) as production) as Percent