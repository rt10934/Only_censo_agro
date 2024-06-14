#utilizando a versao do R 4.2.2

#importando os dados para fazer a tabela geral----------------------------------
library(readxl)
## Lavoura temporarias:
tabela6957_1 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6957_1.xlsx", 
                           skip = 5) |>
  janitor::clean_names() |> tidyr::fill(cod, municipio, variavel)
tabela6957_2 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6957_2.xlsx", 
                           skip = 5) |>
  janitor::clean_names() |> tidyr::fill(cod, municipio, variavel)
tabela6957_3 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6957_3.xlsx", 
                           skip = 5) |>
  janitor::clean_names() |> tidyr::fill(cod, municipio, variavel)

tabela6957 <- dplyr::bind_rows(tabela6957_1, tabela6957_2, tabela6957_3)
rm(tabela6957_1, tabela6957_2, tabela6957_3)

## Lavoura permanentes:
tabela6955_1 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6955_1.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6955_2 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6955_2.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6955_3 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6955_3.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6955 <- dplyr::bind_rows(tabela6955_1, tabela6955_2, tabela6955_3)
rm(tabela6955_1, tabela6955_2, tabela6955_3)

## horticultura:
tabela6953_1 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6953_1.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6953_2 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6953_2.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6953_3 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6953_3.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6953 <- dplyr::bind_rows(tabela6953_1, tabela6953_2, tabela6953_3)
rm(tabela6953_1, tabela6953_2, tabela6953_3)


## FLoricultura
tabela6951 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6951.xlsx", 
                           skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-condicao_do_produtor_em_relacao_as_terras, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6951 |> dplyr::glimpse()
## (animais grandes) 
# (6921)
tabela6921 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6921.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6921 |> dplyr::glimpse()

# 6910
tabela6910 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6910.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6910 |> dplyr::glimpse()
# 6912
tabela6912 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6912.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6912 |> dplyr::glimpse()

# 6918
tabela6918 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6918.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6918 |> dplyr::glimpse()

##  (animais médios)
### Coelhos 
tabela6934 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6934.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_area_total, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6934 |> dplyr::glimpse()

### Caprinos
tabela6928 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6928.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6928 |> dplyr::glimpse()

### Ovinos
tabela6930 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6930.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6930 |> dplyr::glimpse()

### Suinos
tabela6926 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6926.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  tidyr::fill(cod, municipio)

tabela6926 |> dplyr::glimpse()

##  (animais pequenos)

### Aquicultura
tabela6937 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6937.xlsx", 
                         skip = 6) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_area_total, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6937 |> dplyr::glimpse()

### apicultura 
tabela6935 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6935.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_area_total, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6935 |> dplyr::glimpse()

### sericicultura
tabela6936 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6936.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_area_total, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6936 |> dplyr::glimpse()

### ranicultura
tabela6939 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6939.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_area_total, -grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6939 |> dplyr::glimpse()

## Aves
tabela6941 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6941.xlsx", 
                         skip = 5) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_atividade_economica) |>
  tidyr::fill(cod, municipio)

tabela6941 |> dplyr::glimpse()

## Silvicultura
tabela6947 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6947.xlsx", 
                         skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_atividade_economica, -condicao_do_produtor_em_relacao_as_terras) |>
  tidyr::fill(cod, municipio)

tabela6947 |> dplyr::glimpse()

## Extração vegetal
tabela6949 <- read_excel("D:/Armazenamento/VBP_por_tipo/tabela6949.xlsx", 
                         skip = 4) |>
  janitor::clean_names() |>
  dplyr::select(-grupos_de_atividade_economica, -condicao_do_produtor_em_relacao_as_terras) |>
  tidyr::fill(cod, municipio)

tabela6949 |> dplyr::glimpse()

#-------------------------------------------------------------------------------
# Realizando as etapas parciais de conjtas -------------------------------------
#-------------------------------------------------------------------------------
## Lavouras temporarias:----
## sigla "lav_temp_"
tabela6957 <- tabela6957 |>
  dplyr::mutate(valor_da_producao = as.numeric(valor_da_producao),
                cod = as.numeric(cod)) |>
  dplyr::rename(VBP = valor_da_producao,
                code_muni = cod)|>
  dplyr::select(-variavel, -municipio) |>
  tidyr::pivot_wider(names_from ="produtos_da_lavoura_temporaria",
                     values_from = "VBP") |>
  janitor::clean_names() |>
  dplyr::rename(
    lav_temp_total = total,
    lav_temp_abacaxi = abacaxi,
    lav_temp_abobora_moranga = abobora_moranga_jerimum,
    lav_temp_algodao_herbaceo = algodao_herbaceo,
    lav_temp_alho = alho,
    lav_temp_amendoim_em_casca = amendoim_em_casca,
    lav_temp_arroz_em_casca = arroz_em_casca,
    lav_temp_aveia_branca_em_grao = aveia_branca_em_grao,
    lav_temp_batata_inglesa = batata_inglesa,
    lav_temp_cana_de_acucar = cana_de_acucar,
    lav_temp_cebola = cebola,
    lav_temp_centeio_em_grao = centeio_em_grao,
    lav_temp_cevada_em_casca = cevada_em_casca,
    lav_temp_colza_canola = colza_canola,
    lav_temp_ervilha_em_grao = ervilha_em_grao,
    lav_temp_fava_em_grao = fava_em_grao,
    lav_temp_feijao_preto_em_grao = feijao_preto_em_grao,
    lav_temp_feijao_de_cor_em_grao = feijao_de_cor_em_grao,
    lav_temp_feijao_fradinho_em_grao = feijao_fradinho_em_grao,
    lav_temp_feijao_verde = feijao_verde,
    lav_temp_fumo_em_folha_seca = fumo_em_folha_seca,
    lav_temp_gergelim_semente = gergelim_semente,
    lav_temp_girassol_semente = girassol_semente,
    lav_temp_juta_fibra = juta_fibra,
    lav_temp_linho_fibra = linho_fibra,
    lav_temp_malva_fibra = malva_fibra,
    lav_temp_mamona = mamona,
    lav_temp_mandioca_aipim_macaxeira = mandioca_aipim_macaxeira,
    lav_temp_melancia = melancia,
    lav_temp_melao = melao,
    lav_temp_milho_em_grao = milho_em_grao,
    lav_temp_rami_fibra = rami_fibra,
    lav_temp_soja_em_grao = soja_em_grao,
    lav_temp_sorgo_em_grao = sorgo_em_grao,
    lav_temp_sorgo_vassoura = sorgo_vassoura,
    lav_temp_tomate_rasteiro_industrial = tomate_rasteiro_industrial,
    lav_temp_trigo_em_grao = trigo_em_grao,
    lav_temp_trigo_preto_em_grao = trigo_preto_em_grao,
    lav_temp_triticale_em_grao = triticale_em_grao,
    lav_temp_forrageiras_para_corte = forrageiras_para_corte,
    lav_temp_cana_forrageira = cana_forrageira,
    lav_temp_milho_forrageiro = milho_forrageiro,
    lav_temp_palma_forrageira = palma_forrageira,
    lav_temp_sorgo_forrageiro = sorgo_forrageiro,
    lav_temp_outros_produtos = outros_produtos,
    lav_temp_sementes_de_algodao = sementes_de_algodao_produzidas_para_plantio,
    lav_temp_sementes_de_arroz = sementes_de_arroz_produzidas_para_plantio,
    lav_temp_sementes_de_feijao = sementes_de_feijao_produzidas_para_plantio,
    lav_temp_sementes_de_milho = sementes_de_milho_produzidas_para_plantio,
    lav_temp_sementes_de_soja = sementes_de_soja_produzidas_para_plantio,
    lav_temp_sementes_de_trigo = sementes_de_trigo_produzidas_para_plantio,
    lav_temp_sementes_de_forrageiras = sementes_de_forrageiras_produzidas_para_plantio,
    lav_temp_sementes_de_batata_inglesa = sementes_de_batata_inglesa_produzidas_para_plantio,
    lav_temp_toletes_de_cana_de_acucar = toletes_de_cana_de_acucar_produzidas_para_plantio,
    lav_temp_sementes_e_outras_formas_de_propagacao = sementes_e_outras_formas_de_propagacao_de_outros_produtos_produzidas_para_plantio
    )|>
  dplyr::select(-lav_temp_total)

tabela6957 |> dplyr::glimpse()
# Lavoura permanente ----

tabela6955 |> dplyr::glimpse()
tabela6955  <- tabela6955 |>
  dplyr::mutate(valor_da_producao = as.numeric(valor_da_producao),
                cod = as.numeric(cod)) |>
  dplyr::rename(VBP = valor_da_producao,
                code_muni = cod)|>
    dplyr::select(-municipio) |>
  tidyr::pivot_wider(names_from ="produtos_da_lavoura_permanente",
                     values_from = "VBP") |>
  janitor::clean_names() |>
  dplyr::rename(
    lav_perm_total = total,
    lav_perm_abacate = abacate,
    lav_perm_acai_fruto = acai_fruto,
    lav_perm_acerola = acerola,
    lav_perm_agave_sisal_fibra = agave_sisal_fibra,
    lav_perm_agave_sisal_folha = agave_sisal_folha,
    lav_perm_algodao_arboreo = algodao_arboreo,
    lav_perm_ameixa = ameixa,
    lav_perm_amora_folha = amora_folha,
    lav_perm_amora_fruto = amora_fruto,
    lav_perm_atemoia = atemoia,
    lav_perm_azeitona_oliveira = azeitona_oliveira,
    lav_perm_banana = banana,
    lav_perm_borracha_latex_liquido = borracha_latex_liquido,
    lav_perm_borracha_latex_coagulado = borracha_latex_coagulado,
    lav_perm_cacau_amendoa = cacau_amendoa,
    lav_perm_cafe_arabica_em_grao_verde = cafe_arabica_em_grao_verde,
    lav_perm_cafe_canephora_robusta_conilon_em_grao_verde = cafe_canephora_robusta_conilon_em_grao_verde,
    lav_perm_caju_castanha = caju_castanha,
    lav_perm_caju_fruto = caju_fruto,
    lav_perm_camu_camu = camu_camu,
    lav_perm_caqui = caqui,
    lav_perm_carambola = carambola,
    lav_perm_cha_da_india = cha_da_india,
    lav_perm_coco_da_baia = coco_da_baia,
    lav_perm_cravo_da_india = cravo_da_india,
    lav_perm_dende_coco = dende_coco,
    lav_perm_erva_mate = erva_mate,
    lav_perm_figo = figo,
    lav_perm_fruta_de_conde = fruta_de_conde,
    lav_perm_goiaba = goiaba,
    lav_perm_graviola = graviola,
    lav_perm_guarana = guarana,
    lav_perm_jabuticaba = jabuticaba,
    lav_perm_jaca = jaca,
    lav_perm_jambo = jambo,
    lav_perm_kiwi = kiwi,
    lav_perm_laranja = laranja,
    lav_perm_lichia = lichia,
    lav_perm_lima = lima,
    lav_perm_limao = limao,
    lav_perm_louro_folha = louro_folha,
    lav_perm_maca = maca,
    lav_perm_manga = manga,
    lav_perm_mamao = mamao,
    lav_perm_maracuja = maracuja,
    lav_perm_nectarina = nectarina,
    lav_perm_nespera = nespera,
    lav_perm_noz_europeia_peca = noz_europeia_peca,
    lav_perm_palmito = palmito,
    lav_perm_pera = pera,
    lav_perm_pessego = pessego,
    lav_perm_pimenta_do_reino = pimenta_do_reino,
    lav_perm_pitaia = pitaia,
    lav_perm_pitanga = pitanga,
    lav_perm_roma = roma,
    lav_perm_tangerina_bergamota_mexerica = tangerina_bergamota_mexerica,
    lav_perm_urucum_semente = urucum_semente,
    lav_perm_uva_mesa = uva_mesa,
    lav_perm_uva_vinho_ou_suco = uva_vinho_ou_suco,
    lav_perm_pupunha_cacho_frutos = pupunha_cacho_frutos,
    lav_perm_cupuacu = cupuacu,
    lav_perm_outros_produtos = outros_produtos,
    lav_perm_mudas_de_cafe = mudas_de_cafe,
    lav_perm_mudas_de_cacau = mudas_de_cacau,
    lav_perm_mudas_de_caju = mudas_de_caju,
    lav_perm_mudas_de_coco_da_baia = mudas_de_coco_da_baia,
    lav_perm_mudas_de_frutas_citricas = mudas_de_frutas_citricas_laranja_limao_tangerina_etc,
    lav_perm_mudas_de_mamao = mudas_de_mamao,
    lav_perm_mudas_de_uva = mudas_de_uva,
    lav_perm_mudas_de_outros_produtos = mudas_de_outros_produtos_da_lavoura_permanente
  )|>
  dplyr::select(-lav_perm_total)
## horticultura ----
tabela6953 |> dplyr::glimpse()
tabela6953 <- tabela6953|>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(VBP = total,
                code_muni = cod)|>
  dplyr::select(-municipio) |>
  tidyr::pivot_wider(names_from ="produtos_da_horticultura",
                     values_from = "VBP") |>
  janitor::clean_names()|>
  dplyr::rename(
    hort_total = total,
    hort_abobrinha = abobrinha,
    hort_acelga = acelga,
    hort_agriao = agriao,
    hort_aipo = aipo,
    hort_alcachofra = alcachofra,
    hort_alcaparra = alcaparra,
    hort_alecrim = alecrim,
    hort_alface = alface,
    hort_alho_porro = alho_porro,
    hort_almeirao = almeirao,
    hort_aspargo = aspargo,
    hort_batata_baroa_mandioquinha = batata_baroa_mandioquinha,
    hort_batata_doce = batata_doce,
    hort_berinjela = berinjela,
    hort_bertalha = bertalha,
    hort_beterraba = beterraba,
    hort_boldo = boldo,
    hort_brocolis = brocolis,
    hort_bucha_esponja_vegetal = bucha_esponja_vegetal,
    hort_camomila = camomila,
    hort_cara = cara,
    hort_caruru = caruru,
    hort_cebolinha = cebolinha,
    hort_cenoura = cenoura,
    hort_chicoria = chicoria,
    hort_chuchu = chuchu,
    hort_coentro = coentro,
    hort_cogumelos = cogumelos,
    hort_couve = couve,
    hort_couve_flor = couve_flor,
    hort_erva_doce = erva_doce,
    hort_ervilha_vagem = ervilha_vagem,
    hort_espinafre = espinafre,
    hort_gengibre = gengibre,
    hort_hortela = hortela,
    hort_inhame = inhame,
    hort_jilo = jilo,
    hort_lentilha = lentilha,
    hort_manjericao = manjericao,
    hort_maxixe = maxixe,
    hort_milho_verde_espiga = milho_verde_espiga,
    hort_morango = morango,
    hort_mostarda_semente = mostarda_semente,
    hort_nabica = nabica,
    hort_nabo = nabo,
    hort_oregano = oregano,
    hort_pepino = pepino,
    hort_pimenta = pimenta,
    hort_pimentao = pimentao,
    hort_quiabo = quiabo,
    hort_rabanete = rabanete,
    hort_repolho = repolho,
    hort_rucula = rucula,
    hort_salsa = salsa,
    hort_taioba = taioba,
    hort_tomate_estaqueado = tomate_estaqueado,
    hort_vagem_feijao_vagem = vagem_feijao_vagem,
    hort_outros_produtos = outros_produtos,
    hort_sementes_para_plantio = sementes_produzidas_para_plantio,
    hort_mudas_e_outras_para_plantio = mudas_e_outras_formas_de_propagacao_produzidas_para_plantio
  )|>
  dplyr::select(-hort_total)

tabela6953 |> dplyr::glimpse()
## FLoricultura----
tabela6951 |> dplyr::glimpse()

tabela6951 <- tabela6951 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(VBP = total,
                code_muni = cod)|>
  dplyr::select(-municipio) |>
  tidyr::pivot_wider(names_from ="produtos_da_floricultura",
                     values_from = "VBP") |>
  janitor::clean_names()|>
  dplyr::rename(
    flor_total = total,
    flor_flores_folhagens_para_corte = flores_e_folhagens_para_corte,
    flor_gramas = gramas,
    flor_plantas_ornamentais_em_vaso = plantas_ornamentais_em_vaso,
    flor_mudas_de_plantas_ornamentais = mudas_de_plantas_ornamentais,
    flor_plantas_flores_folhagens_medicinais = plantas_flores_folhagens_medicinais,
    flor_sementes_produzidas_para_plantio = sementes_produzidas_para_plantio,
    flor_mudas_e_outras_formas_de_propagacao_produzidas_para_plantio = mudas_e_outras_formas_de_propagacao_produzidas_para_plantio
  )|>
  dplyr::select(-flor_total)

tabela6951 |> dplyr::glimpse()

## (animais grandes)----
### Equinos
tabela6921 <- tabela6921 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_grandes_Equinos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_grandes_Equinos)
  
tabela6921 |> dplyr::glimpse()

### Bovinos
tabela6910 <- tabela6910 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_grandes_Bovinos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_grandes_Bovinos)

tabela6910 |> dplyr::glimpse()

# leite 
tabela6912 <- tabela6912 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_grandes_Leite = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_grandes_Leite)

tabela6912 |> dplyr::glimpse()

# Bubalinos
tabela6918 <- tabela6918 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_grandes_Bubalinos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_grandes_Bubalinos)

tabela6918 |> dplyr::glimpse()

##  (animais médios) ----
### coelhos 
tabela6934 <- tabela6934 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_medios_Coelhos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_medios_Coelhos)

tabela6934 |> dplyr::glimpse()

### Caprinos
tabela6928 <- tabela6928 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_medios_Caprinos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_medios_Caprinos)

tabela6928 |> dplyr::glimpse()

### Ovinos
tabela6930 <- tabela6930 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_medios_Ovinos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_medios_Ovinos)

tabela6930 |> dplyr::glimpse()

### Suinos
tabela6926 <- tabela6926 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(animais_medios_Suinos = total,
                code_muni = cod)|>
  dplyr::select(code_muni, animais_medios_Suinos)

tabela6926 |> dplyr::glimpse()

##  (animais pequenos) ----
### Aquicultura
tabela6937 <- tabela6937 |> 
  dplyr::mutate(peixes = as.numeric(peixes),
                cod = as.numeric(cod),
                camaroes = as.numeric(camaroes),
                ostras_vieiras = as.numeric(ostras_vieiras ),
                mexilhoes = as.numeric(mexilhoes),
                alevinos_larvas_de_camaroes_sementes_de_ostras_vieiras_e_mexilhoes_e_peixes_ornamentais = as.numeric(alevinos_larvas_de_camaroes_sementes_de_ostras_vieiras_e_mexilhoes_e_peixes_ornamentais)
                ) |>
  dplyr::rename(peq_ani_peixes = peixes,
                peq_ani_camaroes = camaroes,
                peq_ani_ostras_vieiras = ostras_vieiras,
                peq_ani_mexilhoes = mexilhoes,
                peq_ani_alevinos_larvas = alevinos_larvas_de_camaroes_sementes_de_ostras_vieiras_e_mexilhoes_e_peixes_ornamentais,
                code_muni = cod)|>
  dplyr::select(-total, -municipio)

tabela6937 |> dplyr::glimpse()

### sericicultura
tabela6936 <- tabela6936 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(peq_ani_sericicultura = total,
                code_muni = cod)|>
  dplyr::select(code_muni, peq_ani_sericicultura)

tabela6936 |> dplyr::glimpse()

### ranicultura
tabela6939 <- tabela6939 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(peq_ani_ranicultura = total,
                code_muni = cod)|>
  dplyr::select(code_muni, peq_ani_ranicultura)

tabela6939 |> dplyr::glimpse()

### apicultura 
tabela6935 <- tabela6935 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(peq_ani_apicultura = total,
                code_muni = cod)|>
  dplyr::select(code_muni, peq_ani_apicultura)

tabela6935 |> dplyr::glimpse()

## Aves----
tabela6941 |> dplyr::glimpse()

tabela6941 <- tabela6941 |> 
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(Aves = total,
                code_muni = cod)|>
  dplyr::select(code_muni, Aves)

tabela6941 |> dplyr::glimpse()

## Silvicultura ----
tabela6947 <-  tabela6947 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(VBP = total,
                code_muni = cod)|>
  dplyr::select(-municipio) |>
  tidyr::pivot_wider(names_from ="produtos_da_silvicultura",
                     values_from = "VBP") |>
  janitor::clean_names()|>
  dplyr::rename(
    silv_total = total,
    silv_arvore_em_pe = arvore_em_pe,
    silv_casca_de_acacia_negra = casca_de_acacia_negra,
    silv_lenha = lenha,
    silv_madeira_em_tora_para_papel = madeira_em_tora_para_papel,
    silv_madeira_em_tora_outra_finalidade = madeira_em_tora_outra_finalidade,
    silv_outros_produtos = outros_produtos,
    silv_mudas_de_eucalipto = mudas_de_eucalipto,
    silv_mudas_de_pinheiro = mudas_de_pinheiro,
    silv_mudas_de_outras_especies_florestais = mudas_de_outras_especies_florestais
  )|>
  dplyr::select(-silv_total)

tabela6947 |> dplyr::glimpse()


## Extração vegetal----
tabela6949 <- tabela6949 |>
  dplyr::mutate(total = as.numeric(total),
                cod = as.numeric(cod)) |>
  dplyr::rename(VBP = total,
                code_muni = cod)|>
  dplyr::select(-municipio) |>
  tidyr::pivot_wider(names_from ="produtos_da_extracao_vegetal",
                     values_from = "VBP") |>
  janitor::clean_names()|>
  dplyr::rename(
    extr_total = total,
    extr_acai_fruto = acai_fruto,
    extr_andiroba_semente = andiroba_semente,
    extr_araticum_fruto = araticum_fruto,
    extr_babacu_coco = babacu_coco,
    extr_babacu_amendoa = babacu_amendoa,
    extr_bacaba_fruto = bacaba_fruto,
    extr_bacuri = bacuri,
    extr_baru_amendoa = baru_amendoa,
    extr_borracha_latex_liquido = borracha_latex_liquido,
    extr_borracha_latex_coagulado = borracha_latex_coagulado,
    extr_buriti_coco = buriti_coco,
    extr_buriti_palha = buriti_palha,
    extr_butia_fibra = butia_fibra,
    extr_cacau_amendoa = cacau_amendoa,
    extr_cagaita_fruto = cagaita_fruto,
    extr_cajarana = cajarana,
    extr_camu_camu_fruto = camu_camu_fruto,
    extr_carnauba_cera = carnauba_cera,
    extr_carnauba_po_de_palha = carnauba_po_de_palha,
    extr_casca_de_angico = casca_de_angico,
    extr_castanha_do_brasil_castanha_do_para = castanha_do_brasil_castanha_do_para,
    extr_caucho_goma_elastica = caucho_goma_elastica,
    extr_copaiba_oleo = copaiba_oleo,
    extr_cumaru_semente = cumaru_semente,
    extr_cupuacu = cupuacu,
    extr_erva_mate = erva_mate,
    extr_ipecacuanha_raiz = ipecacuanha_raiz,
    extr_jaborandi_folha = jaborandi_folha,
    extr_jambu_folha = jambu_folha,
    extr_jucara_fruto = jucara_fruto,
    extr_lenha = lenha,
    extr_licuri_coquilho = licuri_coquilho,
    extr_licuri_cera = licuri_cera,
    extr_macaranduba_goma_nao_elastica = macaranduba_goma_nao_elastica,
    extr_macauba_fruto = macauba_fruto,
    extr_mangaba_fruto = mangaba_fruto,
    extr_manicoba_goma_elastica = manicoba_goma_elastica,
    extr_madeira_em_toras_para_papel = madeira_em_toras_para_papel,
    extr_madeira_em_toras_outra_finalidade = madeira_em_toras_outra_finalidade,
    extr_murici = murici,
    extr_murumuru_semente = murumuru_semente,
    extr_palmito = palmito,
    extr_oiticica_semente = oiticica_semente,
    extr_pequi = pequi,
    extr_piacava_fibra = piacava_fibra,
    extr_pinhao = pinhao,
    extr_pupunha_coco = pupunha_coco,
    extr_sorva_goma_nao_elastica = sorva_goma_nao_elastica,
    extr_ucuuba_amendoa = ucuuba_amendoa,
    extr_imbu_ou_umbu = imbu_ou_umbu,
    extr_outros_produtos = outros_produtos,
    extr_tucuma = tucuma
  )|>
  dplyr::select(-extr_total)

tabela6949 |> dplyr::glimpse() 
# juntando tudo-----------------------------------------------------------------


## Lavouras temporarias
tabela6957
## Lavoura permanente 
tabela6955
## horticultura 
tabela6953
## FLoricultura
tabela6951
##  (animais grandes)
### Equinos
tabela6921
### Bovinos
tabela6910 
# leite 
tabela6912
# Bubalinos
tabela6918 

##  (animais médios)
### Coelhos
tabela6934
### Caprinos
tabela6928
### Ovinos
tabela6930 
### Suinos
tabela6926 
##  (animais pequenos)
### Aquicultura
tabela6937
### sericicultura
tabela6936 
### ranicultura
tabela6939 
### apicultura 
tabela6935

## Aves
tabela6941
## Silvicultura
tabela6947 
## Extração vegetal
tabela6949 

# shapefile -----
mun <- geobr::read_municipality(year=2020)
mun <- mun |> sf::st_drop_geometry() |>
  dplyr::select(code_muni, name_muni, abbrev_state)
 
Base<- dplyr::full_join(mun, tabela6957, by="code_muni")
Base<- dplyr::full_join(Base, tabela6955, by="code_muni")
Base<- dplyr::full_join(Base, tabela6953, by="code_muni")
Base<- dplyr::full_join(Base, tabela6951, by="code_muni")
Base<- dplyr::full_join(Base, tabela6910, by="code_muni")
Base<- dplyr::full_join(Base, tabela6912, by="code_muni")
Base<- dplyr::full_join(Base, tabela6918, by="code_muni")
Base<- dplyr::full_join(Base, tabela6921, by="code_muni")
Base<- dplyr::full_join(Base, tabela6934, by="code_muni")
Base<- dplyr::full_join(Base, tabela6928, by="code_muni")
Base<- dplyr::full_join(Base, tabela6930, by="code_muni")
Base<- dplyr::full_join(Base, tabela6926, by="code_muni")
Base<- dplyr::full_join(Base, tabela6937, by="code_muni")
Base<- dplyr::full_join(Base, tabela6936, by="code_muni")
Base<- dplyr::full_join(Base, tabela6939, by="code_muni")
Base<- dplyr::full_join(Base, tabela6935, by="code_muni")
Base<- dplyr::full_join(Base, tabela6941, by="code_muni")
Base<- dplyr::full_join(Base, tabela6947, by="code_muni")
Base<- dplyr::full_join(Base, tabela6949, by="code_muni")

openxlsx::write.xlsx(Base, file = "D:/Armazenamento/VBP_por_tipo/Base.xlsx")
