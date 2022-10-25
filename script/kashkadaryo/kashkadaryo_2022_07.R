
#Table 1 

kashkadaryo_input_02 %>%
  tabyl(district, q_1) %>%
  adorn_percentages() %>% 
  select(district, "Ёмонлашади", "Ўзгармайди", "Яхшиланади") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Ёмонлашади")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("*1-савол.* **3 ойдан сўнг Ўзбекистонда <span style='color:red'>иқтисодий ҳолат</span> қандай ўзгаради?**"),
             subtitle = md("(*Респондентларнинг жавоблари*)")) %>% 
  my_theme_gt() %>% 
  cols_width(everything() ~ px(180)) %>% 
  gtsave('1_savol.png', path = here("results", "tables", "kashkadaryo"))

#table 3
kashkadaryo_input_02 %>%
  tabyl(district, q_3) %>%
  adorn_percentages() %>% 
  select(district, "Қисқаради", "Ўзгармайди", "Кўпаяди") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Қисқаради")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("*3-савол*. **Кейинги 3 ой давомида <span style='color:red'>оилавий даромадингиз</span> қандай кутиляпти?**"),
             subtitle = md("*(Респондентларнинг жавоблари)*")) %>% 
  my_theme_gt() %>% 
  cols_width(everything() ~ px(180)) %>% 
  gtsave('3_savol.png', path = here("results", "tables", "kashkadaryo"))

#table 5
kashkadaryo_input_02 %>%
  tabyl(district, q_5) %>%
  adorn_percentages() %>% 
  select(district, "Камаяди", "Ўзгармайди", "Кўпаяди") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Камаяди")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("*5-савол*. **3 ойдан сўнг  <span style='color:red'>янги иш ўринлари сони</span> қандай ўзгаради?**"),
             subtitle = md("*(Респондентларнинг жавоблари)*")) %>% 
  my_theme_gt() %>% 
  cols_width(everything() ~ px(180)) %>% 
  gtsave('5_savol.png', path = here("results", "tables", "kashkadaryo"))

#table 2
kashkadaryo_input_02 %>%
  tabyl(district, q_2) %>%
  adorn_percentages() %>% 
  select(district, "Пасайди", "Ўзгармади", "Ошди") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Пасайди")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("*2-савол*. **Ўтган 3 ойга нисбатан <span style='color:red'>оилавий даромадингиз </span> қандай ўзгарди?**"),
             subtitle = md("*(Респондентларнинг жавоблари)*")) %>% 
  my_theme_gt() %>% 
  cols_width(everything() ~ px(180)) %>% 
  gtsave('2_savol.png', path = here("results", "tables", "kashkadaryo"))

#table 4
kashkadaryo_input_02 %>%
  tabyl(district, q_4) %>%
  adorn_percentages() %>% 
  select(district, "Камайди", "Ўзгармади", "Кўпайди") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Камайди")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("*4-савол*. **Ўтган 3 ойга нисбатан <span style='color:red'>янги иш ўринлари  </span> қандай ўзгарди?**"),
             subtitle = md("*(Респондентларнинг жавоблари)*")) %>% 
  my_theme_gt() %>% 
  cols_width(everything() ~ px(180)) %>% 
  gtsave('4_savol.png', path = here("results", "tables", "kashkadaryo"))


#table 6
kashkadaryo_input_02 %>%
  tabyl(district, q_6) %>%
  adorn_percentages() %>% 
  select(district, "Қулай фурсат эмас" = "Йўқ", "Билмайман",   "Қулай фурсат" = "Ҳа") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Қулай фурсат эмас")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("*6-савол*. **Ҳозир узоқ муддатли <span style='color:red'> истеъмол товарларини харид қилиш  </span> учун қулай фурсатми?**"),
             subtitle = md("*(Респондентларнинг жавоблари)*")) %>% 
  my_theme_gt() %>% 
  cols_width(everything() ~ px(180)) %>% 
  gtsave('6_savol.png', path = here("results", "tables", "kashkadaryo"))

#table 7

# table_7 <- kashkadaryo_input_02 %>% add_count(district) %>% 
#   separate_rows(q_7, sep = ",") %>%
#   mutate(q_7 = str_trim(q_7)) %>% 
#   count(district, n,  q_7) %>% 
#   mutate(freq = 100*nn/n) %>% 
#   select(-n, -nn) %>% 
#   pivot_wider(names_from = q_7, values_from = freq) 
# 
# write_xlsx(table_7, "muammolar_kashkadaryo.xlsx")

#table 8

#table 11 mahalliy organlarni baholash 

kashkadaryo_input_02 %>%
  tabyl(district, q_11) %>%
  adorn_percentages() %>% 
  select(district, "Жуда ёмон", "Ёмон", "Ўртача", "Яхши", "Жуда яхши") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Жуда ёмон")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("**Маҳаллий ҳокимият органи фаолиятини қандай баҳолайсиз?**"),
             subtitle = md("(*Респондентларнинг жавоблари)*")) %>% 
  cols_width(everything() ~ px(120)) %>% 
  my_theme_gt() %>% 
  gtsave('mahalliy_organ.png', path = here("results", "tables", "kashkadaryo"))


#table 8 hokim yordamchisi

kashkadaryo_input_02 %>%
  tabyl(district, q_8) %>%
  adorn_percentages() %>%
  select(district, "Танимайман",  
         "Ҳеч қандай ёрдам бергани йўқ", 
         "Имтиёзли кредит олишда кўмаклашди", 
         "Ишга жойлаштиришга ёрдам берди",
         "Субсидия, грант ва моддий ёрдам тақдим этилди",
         "Малака оширишга кўмаклашди",
         "Ер ажратишда ёрдам берди"
  ) %>%
  mutate_at(vars(-district), as.double) %>%
  #arrange(desc(across(starts_with("Жуда ёмон")))) %>%
  gt(rowname_col = "district") %>%
  tab_header(title = md("**Ҳоким ёрдамчиси томонидан кўрсатилган ёрдам ҳолати**"),
             subtitle = md("(*Респондентларнинг жавоблари)*")) %>%
  cols_width(everything() ~ px(120)) %>%
  my_theme_gt() %>%
  gtsave('hokim_yordamchisi.png', path = here("results", "tables", "kashkadaryo"))

#table 9 yoshlar yetakchisi faoli

kashkadaryo_input_02 %>%
  filter(age <= "30") %>% 
  tabyl(district, q_9) %>%
  adorn_percentages() %>%
  select(district, "Танимайман",  
         "Ёрдам олганман",
         "Фаолиятидан хабардорман, лекин ёрдам олмаганман", 
         "Танийман, лекин ёрдамга зарурият йўқ") %>%
  mutate_at(vars(-district), as.double) %>%
  #arrange(desc(across(starts_with("Жуда ёмон")))) %>%
  gt(rowname_col = "district") %>%
  tab_header(title = md("**Ёшлар етакчиси фаолияти билан танишмисиз?**"),
             subtitle = md("(*Респондентларнинг жавоблари)*")) %>%
  cols_width(everything() ~ px(120)) %>%
  my_theme_gt() %>%
  gtsave('yoshlar_yetakchisi.png', path = here("results", "tables", "kashkadaryo"))


#table 10 ayollar faoli

kashkadaryo_input_02 %>%
  filter(gender == "Аёл") %>% 
  tabyl(district, q_10) %>%
  adorn_percentages() %>%
  select(district, "Танимайман",  
         "Ёрдам олганман",
         "Фаолиятидан хабардорман, лекин ёрдам олмаганман", 
         "Танийман, лекин ёрдамга зарурият йўқ") %>%
  mutate_at(vars(-district), as.double) %>%
  #arrange(desc(across(starts_with("Жуда ёмон")))) %>%
  gt(rowname_col = "district") %>%
  tab_header(title = md("**Хотин-қизлар фаоли билан танишмисиз?**"),
             subtitle = md("(*Аёл-қиз респондентларнинг жавоблари)*")) %>%
  cols_width(everything() ~ px(120)) %>%
  my_theme_gt() %>%
  gtsave('ayollar_yetakchisi.png', path = here("results", "tables", "kashkadaryo"))


#table ishsizlik

kashkadaryo_input_02 %>% 
  filter(is_working != "Пенсиядаман") %>% 
  tabyl(district, is_working) %>%
  adorn_percentages() %>% 
  select(district, "Ишламайди"="Йўқ", "Ишлайди"="Ҳа") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Ишламайди")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("**Туманлар (шаҳарлар) кесимида меҳнат ресурсларнинг <span style='color:red'>иш билан бандлик</span>  ҳолати**"),
             subtitle = md("*(Респондентларнинг жавоблари)*")) %>% 
  cols_width(everything() ~ px(190)) %>% 
  my_theme_gt() %>% 
  gtsave('ishsizlik.png', path = here("results", "tables", "kashkadaryo"))  

#gender
kashkadaryo_input_02 %>% 
  filter(is_working != "Пенсиядаман") %>% 
  tabyl(gender, is_working) %>% 
  adorn_percentages()

#formality

kashkadaryo_input_02 %>% 
  filter(is_working == "Ҳа") %>% 
  tabyl(district, is_official) %>%
  adorn_percentages() %>% 
  select(district, "Расмийлаштирилмаган" = "Йуқ", "Расмийлаштирилган" = "Ҳа") %>% 
  mutate_at(vars(-district), as.double) %>% 
  arrange(desc(across(starts_with("Расмийлаштирилмаган")))) %>% 
  gt(rowname_col = "district") %>% 
  tab_header(title = md("**Туманлар (шаҳарлар) кесимида расмий меҳнат фаолияти билан банд бўлганлар ҳолати**")) %>% 
  cols_width(everything() ~ px(200)) %>%
  my_theme_gt() %>% 
  gtsave('formality.png', path = here("results", "tables", "kashkadaryo"))    


#income groups
                                                                                                          

