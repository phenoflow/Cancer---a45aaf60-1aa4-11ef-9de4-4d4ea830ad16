cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  cancer-cerebrum---primary:
    run: cancer-cerebrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  cancer-endocervix---primary:
    run: cancer-endocervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: cancer-cerebrum---primary/output
  cancer-neoplasm---primary:
    run: cancer-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: cancer-endocervix---primary/output
  cancer-trunkunspecified---primary:
    run: cancer-trunkunspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cancer-neoplasm---primary/output
  cancer-respiratory---primary:
    run: cancer-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cancer-trunkunspecified---primary/output
  cancer-subacute---primary:
    run: cancer-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cancer-respiratory---primary/output
  cancer-reticulosarcoma---primary:
    run: cancer-reticulosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: cancer-subacute---primary/output
  hepatic-cancer---primary:
    run: hepatic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cancer-reticulosarcoma---primary/output
  cancer-adenocarcinoma---primary:
    run: cancer-adenocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hepatic-cancer---primary/output
  cancer-granuloma---primary:
    run: cancer-granuloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: cancer-adenocarcinoma---primary/output
  cancer-flexure---primary:
    run: cancer-flexure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cancer-granuloma---primary/output
  cancer-finger---primary:
    run: cancer-finger---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cancer-flexure---primary/output
  cancer-meninge---primary:
    run: cancer-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cancer-finger---primary/output
  cancer-brain---primary:
    run: cancer-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cancer-meninge---primary/output
  cancer-bronchu---primary:
    run: cancer-bronchu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cancer-brain---primary/output
  cancer-frenulum---primary:
    run: cancer-frenulum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: cancer-bronchu---primary/output
  pancreatic-cancer---primary:
    run: pancreatic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cancer-frenulum---primary/output
  buccal-cancer---primary:
    run: buccal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: pancreatic-cancer---primary/output
  cancer-areola---primary:
    run: cancer-areola---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: buccal-cancer---primary/output
  laryngeal-cancer---primary:
    run: laryngeal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: cancer-areola---primary/output
  cancer-urethra---primary:
    run: cancer-urethra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: laryngeal-cancer---primary/output
  cancer-retroperitoneum---primary:
    run: cancer-retroperitoneum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cancer-urethra---primary/output
  cancer---primary:
    run: cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cancer-retroperitoneum---primary/output
  thyroid-cancer---primary:
    run: thyroid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cancer---primary/output
  cancer-nonhodgkin---primary:
    run: cancer-nonhodgkin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: thyroid-cancer---primary/output
  secondary-cancer---primary:
    run: secondary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cancer-nonhodgkin---primary/output
  intestinal-cancer---primary:
    run: intestinal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: secondary-cancer---primary/output
  genitourinary-cancer---primary:
    run: genitourinary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: intestinal-cancer---primary/output
  cancer-quadrant---primary:
    run: cancer-quadrant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: genitourinary-cancer---primary/output
  cancer-palate---primary:
    run: cancer-palate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: cancer-quadrant---primary/output
  cancer-overlap---primary:
    run: cancer-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: cancer-palate---primary/output
  cancer-hypopharynx---primary:
    run: cancer-hypopharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: cancer-overlap---primary/output
  abdominal-cancer---primary:
    run: abdominal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cancer-hypopharynx---primary/output
  cancer-larynx---primary:
    run: cancer-larynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: abdominal-cancer---primary/output
  cancer-vestibule---primary:
    run: cancer-vestibule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cancer-larynx---primary/output
  cancer-cellularity---primary:
    run: cancer-cellularity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: cancer-vestibule---primary/output
  cancer-pharynx---primary:
    run: cancer-pharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: cancer-cellularity---primary/output
  cancer-seminoma---primary:
    run: cancer-seminoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: cancer-pharynx---primary/output
  cancer-conjunctiva---primary:
    run: cancer-conjunctiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: cancer-seminoma---primary/output
  cancer-burkitt---primary:
    run: cancer-burkitt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: cancer-conjunctiva---primary/output
  cancer-metatarsal---primary:
    run: cancer-metatarsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: cancer-burkitt---primary/output
  nervous-cancer---primary:
    run: nervous-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: cancer-metatarsal---primary/output
  cancer-greater---primary:
    run: cancer-greater---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: nervous-cancer---primary/output
  cancer-melanoma---primary:
    run: cancer-melanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: cancer-greater---primary/output
  cancer-plasmacytoma---primary:
    run: cancer-plasmacytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: cancer-melanoma---primary/output
  cancer-letterersiwe---primary:
    run: cancer-letterersiwe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: cancer-plasmacytoma---primary/output
  cancer-uterus---primary:
    run: cancer-uterus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: cancer-letterersiwe---primary/output
  cancer-mesothelioma---primary:
    run: cancer-mesothelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: cancer-uterus---primary/output
  pillar-cancer---primary:
    run: pillar-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: cancer-mesothelioma---primary/output
  cancer-bones---primary:
    run: cancer-bones---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: pillar-cancer---primary/output
  myelomonocytic-cancer---primary:
    run: myelomonocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: cancer-bones---primary/output
  cancer-predominance---primary:
    run: cancer-predominance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: myelomonocytic-cancer---primary/output
  lymphatic-cancer---primary:
    run: lymphatic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: cancer-predominance---primary/output
  cancer-depletion---primary:
    run: cancer-depletion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: lymphatic-cancer---primary/output
  common-cancer---primary:
    run: common-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: cancer-depletion---primary/output
  cancer-epididymi---primary:
    run: cancer-epididymi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: common-cancer---primary/output
  cancer-lipstick---primary:
    run: cancer-lipstick---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: cancer-epididymi---primary/output
  cancer-spleen---primary:
    run: cancer-spleen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: cancer-lipstick---primary/output
  cancer-cheek---primary:
    run: cancer-cheek---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: cancer-spleen---primary/output
  primary-cancer---primary:
    run: primary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: cancer-cheek---primary/output
  cancer-pleura---primary:
    run: cancer-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: primary-cancer---primary/output
  cerebral-cancer---primary:
    run: cerebral-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: cancer-pleura---primary/output
  central-cancer---primary:
    run: central-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: cerebral-cancer---primary/output
  upper-cancer---primary:
    run: upper-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: central-cancer---primary/output
  junctional-cancer---primary:
    run: junctional-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: upper-cancer---primary/output
  cancer-dorsal---primary:
    run: cancer-dorsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: junctional-cancer---primary/output
  cancer-reticuloendotheliosis---primary:
    run: cancer-reticuloendotheliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: cancer-dorsal---primary/output
  cancer-tongue---primary:
    run: cancer-tongue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: cancer-reticuloendotheliosis---primary/output
  cancer-illdefined---primary:
    run: cancer-illdefined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: cancer-tongue---primary/output
  ethmoid-cancer---primary:
    run: ethmoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: cancer-illdefined---primary/output
  cancer-kaposis---primary:
    run: cancer-kaposis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ethmoid-cancer---primary/output
  cancer-eyeball---primary:
    run: cancer-eyeball---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: cancer-kaposis---primary/output
  thoracic-cancer---primary:
    run: thoracic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: cancer-eyeball---primary/output
  axillary-cancer---primary:
    run: axillary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: thoracic-cancer---primary/output
  popliteal-cancer---primary:
    run: popliteal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: axillary-cancer---primary/output
  cancer-floor---primary:
    run: cancer-floor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: popliteal-cancer---primary/output
  lymphocytichistiocytic-cancer---primary:
    run: lymphocytichistiocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: cancer-floor---primary/output
  cancer-excluding---primary:
    run: cancer-excluding---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: lymphocytichistiocytic-cancer---primary/output
  cancer-limbunspfd---primary:
    run: cancer-limbunspfd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: cancer-excluding---primary/output
  cancer-trachea---primary:
    run: cancer-trachea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: cancer-limbunspfd---primary/output
  cancer-penis---primary:
    run: cancer-penis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: cancer-trachea---primary/output
  cancer-fungoide---primary:
    run: cancer-fungoide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: cancer-penis---primary/output
  connective-cancer---primary:
    run: connective-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: cancer-fungoide---primary/output
  cancer-ovary---primary:
    run: cancer-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: connective-cancer---primary/output
  cancer-maltoma---primary:
    run: cancer-maltoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: cancer-ovary---primary/output
  cancer-bcell---primary:
    run: cancer-bcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: cancer-maltoma---primary/output
  cancer-coccyx---primary:
    run: cancer-coccyx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: cancer-bcell---primary/output
  cancer-specified---primary:
    run: cancer-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: cancer-coccyx---primary/output
  cancer-nasal---primary:
    run: cancer-nasal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: cancer-specified---primary/output
  cancer-rectum---primary:
    run: cancer-rectum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: cancer-nasal---primary/output
  parietal-cancer---primary:
    run: parietal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: cancer-rectum---primary/output
  cancer-tract---primary:
    run: cancer-tract---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: parietal-cancer---primary/output
  cancer-vagina---primary:
    run: cancer-vagina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: cancer-tract---primary/output
  haematopoietic-cancer---primary:
    run: haematopoietic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: cancer-vagina---primary/output
  leukaemic-cancer---primary:
    run: leukaemic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: haematopoietic-cancer---primary/output
  cancer-caecum---primary:
    run: cancer-caecum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: leukaemic-cancer---primary/output
  coccygeal-cancer---primary:
    run: coccygeal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: cancer-caecum---primary/output
  renal-cancer---primary:
    run: renal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: coccygeal-cancer---primary/output
  spinal-cancer---primary:
    run: spinal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: renal-cancer---primary/output
  cancer-chloroma---primary:
    run: cancer-chloroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: spinal-cancer---primary/output
  cancer-shoulder---primary:
    run: cancer-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: cancer-chloroma---primary/output
  cancer-paraganglia---primary:
    run: cancer-paraganglia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: cancer-shoulder---primary/output
  cancer-clavicle---primary:
    run: cancer-clavicle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: cancer-paraganglia---primary/output
  cancer-colon---primary:
    run: cancer-colon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: cancer-clavicle---primary/output
  female-cancer---primary:
    run: female-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: cancer-colon---primary/output
  cancer-heart---primary:
    run: cancer-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: female-cancer---primary/output
  pelvic-cancer---primary:
    run: pelvic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: cancer-heart---primary/output
  cancer-nipple---primary:
    run: cancer-nipple---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: pelvic-cancer---primary/output
  cancer-surface---primary:
    run: cancer-surface---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: cancer-nipple---primary/output
  eyelid-cancer---primary:
    run: eyelid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: cancer-surface---primary/output
  mediastinal-cancer---primary:
    run: mediastinal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: eyelid-cancer---primary/output
  tonsillar-cancer---primary:
    run: tonsillar-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: mediastinal-cancer---primary/output
  cancer-sacrum---primary:
    run: cancer-sacrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: tonsillar-cancer---primary/output
  cancer-forearm---primary:
    run: cancer-forearm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: cancer-sacrum---primary/output
  temporal-cancer---primary:
    run: temporal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: cancer-forearm---primary/output
  pharyngeal-cancer---primary:
    run: pharyngeal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: temporal-cancer---primary/output
  cancer-gallbladder---primary:
    run: cancer-gallbladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: pharyngeal-cancer---primary/output
  parotid-cancer---primary:
    run: parotid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: cancer-gallbladder---primary/output
  immunoproliferative-cancer---primary:
    run: immunoproliferative-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: parotid-cancer---primary/output
  cancer-uterine---primary:
    run: cancer-uterine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: immunoproliferative-cancer---primary/output
  cancer-endometrium---primary:
    run: cancer-endometrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: cancer-uterine---primary/output
  cancer-thumb---primary:
    run: cancer-thumb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: cancer-endometrium---primary/output
  cancer-fundu---primary:
    run: cancer-fundu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: cancer-thumb---primary/output
  myeloproliferative-cancer---primary:
    run: myeloproliferative-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: cancer-fundu---primary/output
  sacral-cancer---primary:
    run: sacral-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: myeloproliferative-cancer---primary/output
  endocervical-cancer---primary:
    run: endocervical-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule127
      potentialCases:
        id: potentialCases
        source: sacral-cancer---primary/output
  cancer-thorax---primary:
    run: cancer-thorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule128
      potentialCases:
        id: potentialCases
        source: endocervical-cancer---primary/output
  cancer-pylorus---primary:
    run: cancer-pylorus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule129
      potentialCases:
        id: potentialCases
        source: cancer-thorax---primary/output
  frontal-cancer---primary:
    run: frontal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule130
      potentialCases:
        id: potentialCases
        source: cancer-pylorus---primary/output
  cancer-column---primary:
    run: cancer-column---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule131
      potentialCases:
        id: potentialCases
        source: frontal-cancer---primary/output
  cancer-cortex---primary:
    run: cancer-cortex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule132
      potentialCases:
        id: potentialCases
        source: cancer-column---primary/output
  cancer-sulcu---primary:
    run: cancer-sulcu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule133
      potentialCases:
        id: potentialCases
        source: cancer-cortex---primary/output
  cancer-prostate---primary:
    run: cancer-prostate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule134
      potentialCases:
        id: potentialCases
        source: cancer-sulcu---primary/output
  cancer-diffuse---primary:
    run: cancer-diffuse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule135
      potentialCases:
        id: potentialCases
        source: cancer-prostate---primary/output
  follicular-cancer---primary:
    run: follicular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule136
      potentialCases:
        id: potentialCases
        source: cancer-diffuse---primary/output
  cancer-duodenum---primary:
    run: cancer-duodenum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule137
      potentialCases:
        id: potentialCases
        source: follicular-cancer---primary/output
  granulocytic-cancer---primary:
    run: granulocytic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule138
      potentialCases:
        id: potentialCases
        source: cancer-duodenum---primary/output
  cancer-oropharynx---primary:
    run: cancer-oropharynx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule139
      potentialCases:
        id: potentialCases
        source: granulocytic-cancer---primary/output
  cancer-thymu---primary:
    run: cancer-thymu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule140
      potentialCases:
        id: potentialCases
        source: cancer-oropharynx---primary/output
  cancer-cardia---primary:
    run: cancer-cardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule141
      potentialCases:
        id: potentialCases
        source: cancer-thymu---primary/output
  cancer-isthmu---primary:
    run: cancer-isthmu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule142
      potentialCases:
        id: potentialCases
        source: cancer-cardia---primary/output
  cancer-lymphoma---primary:
    run: cancer-lymphoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule143
      potentialCases:
        id: potentialCases
        source: cancer-isthmu---primary/output
  vertebral-cancer---primary:
    run: vertebral-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule144
      potentialCases:
        id: potentialCases
        source: cancer-lymphoma---primary/output
  lower-cancer---primary:
    run: lower-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule145
      potentialCases:
        id: potentialCases
        source: vertebral-cancer---primary/output
  cancer-ureter---primary:
    run: cancer-ureter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule146
      potentialCases:
        id: potentialCases
        source: lower-cancer---primary/output
  cancer-biliary---primary:
    run: cancer-biliary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule147
      potentialCases:
        id: potentialCases
        source: cancer-ureter---primary/output
  faucial-cancer---primary:
    run: faucial-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule148
      potentialCases:
        id: potentialCases
        source: cancer-biliary---primary/output
  cancer-adnexa---primary:
    run: cancer-adnexa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule149
      potentialCases:
        id: potentialCases
        source: faucial-cancer---primary/output
  cancer-kahler's---primary:
    run: cancer-kahler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule150
      potentialCases:
        id: potentialCases
        source: cancer-adnexa---primary/output
  cancer-sezary---primary:
    run: cancer-sezary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule151
      potentialCases:
        id: potentialCases
        source: cancer-kahler's---primary/output
  cancer-articulr---primary:
    run: cancer-articulr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule152
      potentialCases:
        id: potentialCases
        source: cancer-sezary---primary/output
  cancer-sinus---primary:
    run: cancer-sinus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule153
      potentialCases:
        id: potentialCases
        source: cancer-articulr---primary/output
  canal-cancer---primary:
    run: canal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule154
      potentialCases:
        id: potentialCases
        source: cancer-sinus---primary/output
  nodular-cancer---primary:
    run: nodular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule155
      potentialCases:
        id: potentialCases
        source: canal-cancer---primary/output
  cancer-nerve---primary:
    run: cancer-nerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule156
      potentialCases:
        id: potentialCases
        source: nodular-cancer---primary/output
  cancer-cartilage---primary:
    run: cancer-cartilage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule157
      potentialCases:
        id: potentialCases
        source: cancer-nerve---primary/output
  cancer-majora---primary:
    run: cancer-majora---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule158
      potentialCases:
        id: potentialCases
        source: cancer-cartilage---primary/output
  cancer-buttock---primary:
    run: cancer-buttock---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule159
      potentialCases:
        id: potentialCases
        source: cancer-majora---primary/output
  cancer-spine---primary:
    run: cancer-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule160
      potentialCases:
        id: potentialCases
        source: cancer-buttock---primary/output
  lacrimal-cancer---primary:
    run: lacrimal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule161
      potentialCases:
        id: potentialCases
        source: cancer-spine---primary/output
  cancer-axilla---primary:
    run: cancer-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule162
      potentialCases:
        id: potentialCases
        source: lacrimal-cancer---primary/output
  cancer-stomach---primary:
    run: cancer-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule163
      potentialCases:
        id: potentialCases
        source: cancer-axilla---primary/output
  digestive-cancer---primary:
    run: digestive-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule164
      potentialCases:
        id: potentialCases
        source: cancer-stomach---primary/output
  cancer-sarcoma---primary:
    run: cancer-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule165
      potentialCases:
        id: potentialCases
        source: digestive-cancer---primary/output
  hypopharyngeal-cancer---primary:
    run: hypopharyngeal-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule166
      potentialCases:
        id: potentialCases
        source: cancer-sarcoma---primary/output
  cancer-epiglotti---primary:
    run: cancer-epiglotti---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule167
      potentialCases:
        id: potentialCases
        source: hypopharyngeal-cancer---primary/output
  cancer-ileum---primary:
    run: cancer-ileum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule168
      potentialCases:
        id: potentialCases
        source: cancer-epiglotti---primary/output
  lateral-cancer---primary:
    run: lateral-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule169
      potentialCases:
        id: potentialCases
        source: cancer-ileum---primary/output
  cancer-metacarpal---primary:
    run: cancer-metacarpal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule170
      potentialCases:
        id: potentialCases
        source: lateral-cancer---primary/output
  cranial-cancer---primary:
    run: cranial-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule171
      potentialCases:
        id: potentialCases
        source: cancer-metacarpal---primary/output
  cancer-orbit---primary:
    run: cancer-orbit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule172
      potentialCases:
        id: potentialCases
        source: cranial-cancer---primary/output
  cancer-cornea---primary:
    run: cancer-cornea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule173
      potentialCases:
        id: potentialCases
        source: cancer-orbit---primary/output
  cancer-metastas---primary:
    run: cancer-metastas---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule174
      potentialCases:
        id: potentialCases
        source: cancer-cornea---primary/output
  cancer-sclerosis---primary:
    run: cancer-sclerosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule175
      potentialCases:
        id: potentialCases
        source: cancer-metastas---primary/output
  other-cancer---primary:
    run: other-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule176
      potentialCases:
        id: potentialCases
        source: cancer-sclerosis---primary/output
  mesenteric-cancer---primary:
    run: mesenteric-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule177
      potentialCases:
        id: potentialCases
        source: other-cancer---primary/output
  cancer-pancoast's---primary:
    run: cancer-pancoast's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule178
      potentialCases:
        id: potentialCases
        source: mesenteric-cancer---primary/output
  cancer-thigh---primary:
    run: cancer-thigh---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule179
      potentialCases:
        id: potentialCases
        source: cancer-pancoast's---primary/output
  cancer-posterior---primary:
    run: cancer-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule180
      potentialCases:
        id: potentialCases
        source: cancer-thigh---primary/output
  cancer-middle---primary:
    run: cancer-middle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule181
      potentialCases:
        id: potentialCases
        source: cancer-posterior---primary/output
  cancer-labia---primary:
    run: cancer-labia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule182
      potentialCases:
        id: potentialCases
        source: cancer-middle---primary/output
  pyloric-cancer---primary:
    run: pyloric-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule183
      potentialCases:
        id: potentialCases
        source: cancer-labia---primary/output
  aortic-cancer---primary:
    run: aortic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule184
      potentialCases:
        id: potentialCases
        source: pyloric-cancer---primary/output
  cancer-third---primary:
    run: cancer-third---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule185
      potentialCases:
        id: potentialCases
        source: aortic-cancer---primary/output
  cancer-phalange---primary:
    run: cancer-phalange---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule186
      potentialCases:
        id: potentialCases
        source: cancer-third---primary/output
  cancer-abdoman---primary:
    run: cancer-abdoman---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule187
      potentialCases:
        id: potentialCases
        source: cancer-phalange---primary/output
  cancer-phaeochromocytoma---primary:
    run: cancer-phaeochromocytoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule188
      potentialCases:
        id: potentialCases
        source: cancer-abdoman---primary/output
  cancer-gland---primary:
    run: cancer-gland---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule189
      potentialCases:
        id: potentialCases
        source: cancer-phaeochromocytoma---primary/output
  cancer-corpus---primary:
    run: cancer-corpus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule190
      potentialCases:
        id: potentialCases
        source: cancer-gland---primary/output
  cancer-sternum---primary:
    run: cancer-sternum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule191
      potentialCases:
        id: potentialCases
        source: cancer-corpus---primary/output
  cancer-tissue---primary:
    run: cancer-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule192
      potentialCases:
        id: potentialCases
        source: cancer-sternum---primary/output
  cancer-tcell---primary:
    run: cancer-tcell---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule193
      potentialCases:
        id: potentialCases
        source: cancer-tissue---primary/output
  cancer-accessory---primary:
    run: cancer-accessory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule194
      potentialCases:
        id: potentialCases
        source: cancer-tcell---primary/output
  cancer-orifice---primary:
    run: cancer-orifice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule195
      potentialCases:
        id: potentialCases
        source: cancer-accessory---primary/output
  independent-cancer---primary:
    run: independent-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule196
      potentialCases:
        id: potentialCases
        source: cancer-orifice---primary/output
  cancer-region---primary:
    run: cancer-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule197
      potentialCases:
        id: potentialCases
        source: independent-cancer---primary/output
  cancer-septum---primary:
    run: cancer-septum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule198
      potentialCases:
        id: potentialCases
        source: cancer-region---primary/output
  cancer-erythraemia---primary:
    run: cancer-erythraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule199
      potentialCases:
        id: potentialCases
        source: cancer-septum---primary/output
  cancer-histiocytosis---primary:
    run: cancer-histiocytosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule200
      potentialCases:
        id: potentialCases
        source: cancer-erythraemia---primary/output
  unknown-cancer---primary:
    run: unknown-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule201
      potentialCases:
        id: potentialCases
        source: cancer-histiocytosis---primary/output
  submandibular-cancer---primary:
    run: submandibular-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule202
      potentialCases:
        id: potentialCases
        source: unknown-cancer---primary/output
  cancer-portion---primary:
    run: cancer-portion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule203
      potentialCases:
        id: potentialCases
        source: submandibular-cancer---primary/output
  cancer-mucosa---primary:
    run: cancer-mucosa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule204
      potentialCases:
        id: potentialCases
        source: cancer-portion---primary/output
  cancer-fossa---primary:
    run: cancer-fossa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule205
      potentialCases:
        id: potentialCases
        source: cancer-mucosa---primary/output
  cancer-malignant---primary:
    run: cancer-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule206
      potentialCases:
        id: potentialCases
        source: cancer-fossa---primary/output
  cancer-scalp---primary:
    run: cancer-scalp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule207
      potentialCases:
        id: potentialCases
        source: cancer-malignant---primary/output
  cancer-myeloma---primary:
    run: cancer-myeloma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule208
      potentialCases:
        id: potentialCases
        source: cancer-scalp---primary/output
  cancer-structure---primary:
    run: cancer-structure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule209
      potentialCases:
        id: potentialCases
        source: cancer-myeloma---primary/output
  cancer-scrotum---primary:
    run: cancer-scrotum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule210
      potentialCases:
        id: potentialCases
        source: cancer-structure---primary/output
  cancer-chondroma---primary:
    run: cancer-chondroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule211
      potentialCases:
        id: potentialCases
        source: cancer-scrotum---primary/output
  cancer-vulva---primary:
    run: cancer-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule212
      potentialCases:
        id: potentialCases
        source: cancer-chondroma---primary/output
  cancer-oesophagu---primary:
    run: cancer-oesophagu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule213
      potentialCases:
        id: potentialCases
        source: cancer-vulva---primary/output
  cancer-kidney---primary:
    run: cancer-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule214
      potentialCases:
        id: potentialCases
        source: cancer-oesophagu---primary/output
  cancer-antrum---primary:
    run: cancer-antrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule215
      potentialCases:
        id: potentialCases
        source: cancer-kidney---primary/output
  cancer-breast---primary:
    run: cancer-breast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule216
      potentialCases:
        id: potentialCases
        source: cancer-antrum---primary/output
  choroid-cancer---primary:
    run: choroid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule217
      potentialCases:
        id: potentialCases
        source: cancer-breast---primary/output
  cancer-chest---primary:
    run: cancer-chest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule218
      potentialCases:
        id: potentialCases
        source: choroid-cancer---primary/output
  genital-cancer---primary:
    run: genital-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule219
      potentialCases:
        id: potentialCases
        source: cancer-chest---primary/output
  cancer-retina---primary:
    run: cancer-retina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule220
      potentialCases:
        id: potentialCases
        source: genital-cancer---primary/output
  cancer-hypernephroma---primary:
    run: cancer-hypernephroma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule221
      potentialCases:
        id: potentialCases
        source: cancer-retina---primary/output
  rectosigmoid-cancer---primary:
    run: rectosigmoid-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule222
      potentialCases:
        id: potentialCases
        source: cancer-hypernephroma---primary/output
  cancer-medulla---primary:
    run: cancer-medulla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule223
      potentialCases:
        id: potentialCases
        source: rectosigmoid-cancer---primary/output
  cancer-mouth---primary:
    run: cancer-mouth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule224
      potentialCases:
        id: potentialCases
        source: cancer-medulla---primary/output
  cancer-perineum---primary:
    run: cancer-perineum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule225
      potentialCases:
        id: potentialCases
        source: cancer-mouth---primary/output
  cancer-pericardium---primary:
    run: cancer-pericardium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule226
      potentialCases:
        id: potentialCases
        source: cancer-perineum---primary/output
  cancer-cervix---primary:
    run: cancer-cervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule227
      potentialCases:
        id: potentialCases
        source: cancer-pericardium---primary/output
  cancer-anterior---primary:
    run: cancer-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule228
      potentialCases:
        id: potentialCases
        source: cancer-cervix---primary/output
  cancer-skull---primary:
    run: cancer-skull---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule229
      potentialCases:
        id: potentialCases
        source: cancer-anterior---primary/output
  cancer-auditory---primary:
    run: cancer-auditory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule230
      potentialCases:
        id: potentialCases
        source: cancer-skull---primary/output
  cancer-carcinoma---primary:
    run: cancer-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule231
      potentialCases:
        id: potentialCases
        source: cancer-auditory---primary/output
  ectopic-cancer---primary:
    run: ectopic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule232
      potentialCases:
        id: potentialCases
        source: cancer-carcinoma---primary/output
  cancer-liver---primary:
    run: cancer-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule233
      potentialCases:
        id: potentialCases
        source: ectopic-cancer---primary/output
  cancer-osteoma---primary:
    run: cancer-osteoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule234
      potentialCases:
        id: potentialCases
        source: cancer-liver---primary/output
  tympanic-cancer---primary:
    run: tympanic-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule235
      potentialCases:
        id: potentialCases
        source: cancer-osteoma---primary/output
  cancer-scapula---primary:
    run: cancer-scapula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule236
      potentialCases:
        id: potentialCases
        source: tympanic-cancer---primary/output
  cancer-neuroblastoma---primary:
    run: cancer-neuroblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule237
      potentialCases:
        id: potentialCases
        source: cancer-scapula---primary/output
  occipital-cancer---primary:
    run: occipital-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule238
      potentialCases:
        id: potentialCases
        source: cancer-neuroblastoma---primary/output
  cancer-2ndry---primary:
    run: cancer-2ndry---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule239
      potentialCases:
        id: potentialCases
        source: occipital-cancer---primary/output
  cancer-tumour---primary:
    run: cancer-tumour---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule240
      potentialCases:
        id: potentialCases
        source: cancer-2ndry---primary/output
  pituitary-cancer---primary:
    run: pituitary-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule241
      potentialCases:
        id: potentialCases
        source: cancer-tumour---primary/output
  cancer-guglielmo's---primary:
    run: cancer-guglielmo's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule242
      potentialCases:
        id: potentialCases
        source: pituitary-cancer---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule243
      potentialCases:
        id: potentialCases
        source: cancer-guglielmo's---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
  inputModule127:
    id: inputModule127
    doc: Python implementation unit
    type: File
  inputModule128:
    id: inputModule128
    doc: Python implementation unit
    type: File
  inputModule129:
    id: inputModule129
    doc: Python implementation unit
    type: File
  inputModule130:
    id: inputModule130
    doc: Python implementation unit
    type: File
  inputModule131:
    id: inputModule131
    doc: Python implementation unit
    type: File
  inputModule132:
    id: inputModule132
    doc: Python implementation unit
    type: File
  inputModule133:
    id: inputModule133
    doc: Python implementation unit
    type: File
  inputModule134:
    id: inputModule134
    doc: Python implementation unit
    type: File
  inputModule135:
    id: inputModule135
    doc: Python implementation unit
    type: File
  inputModule136:
    id: inputModule136
    doc: Python implementation unit
    type: File
  inputModule137:
    id: inputModule137
    doc: Python implementation unit
    type: File
  inputModule138:
    id: inputModule138
    doc: Python implementation unit
    type: File
  inputModule139:
    id: inputModule139
    doc: Python implementation unit
    type: File
  inputModule140:
    id: inputModule140
    doc: Python implementation unit
    type: File
  inputModule141:
    id: inputModule141
    doc: Python implementation unit
    type: File
  inputModule142:
    id: inputModule142
    doc: Python implementation unit
    type: File
  inputModule143:
    id: inputModule143
    doc: Python implementation unit
    type: File
  inputModule144:
    id: inputModule144
    doc: Python implementation unit
    type: File
  inputModule145:
    id: inputModule145
    doc: Python implementation unit
    type: File
  inputModule146:
    id: inputModule146
    doc: Python implementation unit
    type: File
  inputModule147:
    id: inputModule147
    doc: Python implementation unit
    type: File
  inputModule148:
    id: inputModule148
    doc: Python implementation unit
    type: File
  inputModule149:
    id: inputModule149
    doc: Python implementation unit
    type: File
  inputModule150:
    id: inputModule150
    doc: Python implementation unit
    type: File
  inputModule151:
    id: inputModule151
    doc: Python implementation unit
    type: File
  inputModule152:
    id: inputModule152
    doc: Python implementation unit
    type: File
  inputModule153:
    id: inputModule153
    doc: Python implementation unit
    type: File
  inputModule154:
    id: inputModule154
    doc: Python implementation unit
    type: File
  inputModule155:
    id: inputModule155
    doc: Python implementation unit
    type: File
  inputModule156:
    id: inputModule156
    doc: Python implementation unit
    type: File
  inputModule157:
    id: inputModule157
    doc: Python implementation unit
    type: File
  inputModule158:
    id: inputModule158
    doc: Python implementation unit
    type: File
  inputModule159:
    id: inputModule159
    doc: Python implementation unit
    type: File
  inputModule160:
    id: inputModule160
    doc: Python implementation unit
    type: File
  inputModule161:
    id: inputModule161
    doc: Python implementation unit
    type: File
  inputModule162:
    id: inputModule162
    doc: Python implementation unit
    type: File
  inputModule163:
    id: inputModule163
    doc: Python implementation unit
    type: File
  inputModule164:
    id: inputModule164
    doc: Python implementation unit
    type: File
  inputModule165:
    id: inputModule165
    doc: Python implementation unit
    type: File
  inputModule166:
    id: inputModule166
    doc: Python implementation unit
    type: File
  inputModule167:
    id: inputModule167
    doc: Python implementation unit
    type: File
  inputModule168:
    id: inputModule168
    doc: Python implementation unit
    type: File
  inputModule169:
    id: inputModule169
    doc: Python implementation unit
    type: File
  inputModule170:
    id: inputModule170
    doc: Python implementation unit
    type: File
  inputModule171:
    id: inputModule171
    doc: Python implementation unit
    type: File
  inputModule172:
    id: inputModule172
    doc: Python implementation unit
    type: File
  inputModule173:
    id: inputModule173
    doc: Python implementation unit
    type: File
  inputModule174:
    id: inputModule174
    doc: Python implementation unit
    type: File
  inputModule175:
    id: inputModule175
    doc: Python implementation unit
    type: File
  inputModule176:
    id: inputModule176
    doc: Python implementation unit
    type: File
  inputModule177:
    id: inputModule177
    doc: Python implementation unit
    type: File
  inputModule178:
    id: inputModule178
    doc: Python implementation unit
    type: File
  inputModule179:
    id: inputModule179
    doc: Python implementation unit
    type: File
  inputModule180:
    id: inputModule180
    doc: Python implementation unit
    type: File
  inputModule181:
    id: inputModule181
    doc: Python implementation unit
    type: File
  inputModule182:
    id: inputModule182
    doc: Python implementation unit
    type: File
  inputModule183:
    id: inputModule183
    doc: Python implementation unit
    type: File
  inputModule184:
    id: inputModule184
    doc: Python implementation unit
    type: File
  inputModule185:
    id: inputModule185
    doc: Python implementation unit
    type: File
  inputModule186:
    id: inputModule186
    doc: Python implementation unit
    type: File
  inputModule187:
    id: inputModule187
    doc: Python implementation unit
    type: File
  inputModule188:
    id: inputModule188
    doc: Python implementation unit
    type: File
  inputModule189:
    id: inputModule189
    doc: Python implementation unit
    type: File
  inputModule190:
    id: inputModule190
    doc: Python implementation unit
    type: File
  inputModule191:
    id: inputModule191
    doc: Python implementation unit
    type: File
  inputModule192:
    id: inputModule192
    doc: Python implementation unit
    type: File
  inputModule193:
    id: inputModule193
    doc: Python implementation unit
    type: File
  inputModule194:
    id: inputModule194
    doc: Python implementation unit
    type: File
  inputModule195:
    id: inputModule195
    doc: Python implementation unit
    type: File
  inputModule196:
    id: inputModule196
    doc: Python implementation unit
    type: File
  inputModule197:
    id: inputModule197
    doc: Python implementation unit
    type: File
  inputModule198:
    id: inputModule198
    doc: Python implementation unit
    type: File
  inputModule199:
    id: inputModule199
    doc: Python implementation unit
    type: File
  inputModule200:
    id: inputModule200
    doc: Python implementation unit
    type: File
  inputModule201:
    id: inputModule201
    doc: Python implementation unit
    type: File
  inputModule202:
    id: inputModule202
    doc: Python implementation unit
    type: File
  inputModule203:
    id: inputModule203
    doc: Python implementation unit
    type: File
  inputModule204:
    id: inputModule204
    doc: Python implementation unit
    type: File
  inputModule205:
    id: inputModule205
    doc: Python implementation unit
    type: File
  inputModule206:
    id: inputModule206
    doc: Python implementation unit
    type: File
  inputModule207:
    id: inputModule207
    doc: Python implementation unit
    type: File
  inputModule208:
    id: inputModule208
    doc: Python implementation unit
    type: File
  inputModule209:
    id: inputModule209
    doc: Python implementation unit
    type: File
  inputModule210:
    id: inputModule210
    doc: Python implementation unit
    type: File
  inputModule211:
    id: inputModule211
    doc: Python implementation unit
    type: File
  inputModule212:
    id: inputModule212
    doc: Python implementation unit
    type: File
  inputModule213:
    id: inputModule213
    doc: Python implementation unit
    type: File
  inputModule214:
    id: inputModule214
    doc: Python implementation unit
    type: File
  inputModule215:
    id: inputModule215
    doc: Python implementation unit
    type: File
  inputModule216:
    id: inputModule216
    doc: Python implementation unit
    type: File
  inputModule217:
    id: inputModule217
    doc: Python implementation unit
    type: File
  inputModule218:
    id: inputModule218
    doc: Python implementation unit
    type: File
  inputModule219:
    id: inputModule219
    doc: Python implementation unit
    type: File
  inputModule220:
    id: inputModule220
    doc: Python implementation unit
    type: File
  inputModule221:
    id: inputModule221
    doc: Python implementation unit
    type: File
  inputModule222:
    id: inputModule222
    doc: Python implementation unit
    type: File
  inputModule223:
    id: inputModule223
    doc: Python implementation unit
    type: File
  inputModule224:
    id: inputModule224
    doc: Python implementation unit
    type: File
  inputModule225:
    id: inputModule225
    doc: Python implementation unit
    type: File
  inputModule226:
    id: inputModule226
    doc: Python implementation unit
    type: File
  inputModule227:
    id: inputModule227
    doc: Python implementation unit
    type: File
  inputModule228:
    id: inputModule228
    doc: Python implementation unit
    type: File
  inputModule229:
    id: inputModule229
    doc: Python implementation unit
    type: File
  inputModule230:
    id: inputModule230
    doc: Python implementation unit
    type: File
  inputModule231:
    id: inputModule231
    doc: Python implementation unit
    type: File
  inputModule232:
    id: inputModule232
    doc: Python implementation unit
    type: File
  inputModule233:
    id: inputModule233
    doc: Python implementation unit
    type: File
  inputModule234:
    id: inputModule234
    doc: Python implementation unit
    type: File
  inputModule235:
    id: inputModule235
    doc: Python implementation unit
    type: File
  inputModule236:
    id: inputModule236
    doc: Python implementation unit
    type: File
  inputModule237:
    id: inputModule237
    doc: Python implementation unit
    type: File
  inputModule238:
    id: inputModule238
    doc: Python implementation unit
    type: File
  inputModule239:
    id: inputModule239
    doc: Python implementation unit
    type: File
  inputModule240:
    id: inputModule240
    doc: Python implementation unit
    type: File
  inputModule241:
    id: inputModule241
    doc: Python implementation unit
    type: File
  inputModule242:
    id: inputModule242
    doc: Python implementation unit
    type: File
  inputModule243:
    id: inputModule243
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
