cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ca-channel-blocker-slowrelease---primary:
    run: ca-channel-blocker-slowrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  ca-channel-blocker-360mg---primary:
    run: ca-channel-blocker-360mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-slowrelease---primary/output
  ca-channel-blocker-200mg---primary:
    run: ca-channel-blocker-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-360mg---primary/output
  ca-channel-blocker-bayer---primary:
    run: ca-channel-blocker-bayer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-200mg---primary/output
  ca-channel-blocker-160mg---primary:
    run: ca-channel-blocker-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-bayer---primary/output
  ca-channel-blocker-securon---primary:
    run: ca-channel-blocker-securon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-160mg---primary/output
  ca-channel-blocker-verapamil---primary:
    run: ca-channel-blocker-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-securon---primary/output
  ca-channel-blocker-180mg---primary:
    run: ca-channel-blocker-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-verapamil---primary/output
  ca-channel-blocker-angitil---primary:
    run: ca-channel-blocker-angitil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-180mg---primary/output
  ca-channel-blocker-viazem---primary:
    run: ca-channel-blocker-viazem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-angitil---primary/output
  ca-channel-blocker-300mg---primary:
    run: ca-channel-blocker-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-viazem---primary/output
  ca-channel-blocker-sugar---primary:
    run: ca-channel-blocker-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-300mg---primary/output
  ca-channel-blocker-astella---primary:
    run: ca-channel-blocker-astella---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-sugar---primary/output
  ca-channel-blocker-motens---primary:
    run: ca-channel-blocker-motens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-astella---primary/output
  ca-channel-blocker-chiesi---primary:
    run: ca-channel-blocker-chiesi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-motens---primary/output
  ca-channel-blocker-cordilox---primary:
    run: ca-channel-blocker-cordilox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-chiesi---primary/output
  ca-channel-blocker-aventi---primary:
    run: ca-channel-blocker-aventi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-cordilox---primary/output
  ca-channel-blocker-cephalon---primary:
    run: ca-channel-blocker-cephalon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-aventi---primary/output
  ca-channel-blocker-adipine---primary:
    run: ca-channel-blocker-adipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-cephalon---primary/output
  ca-channel-blocker-veratil---primary:
    run: ca-channel-blocker-veratil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-adipine---primary/output
  ca-channel-blocker-angiopine---primary:
    run: ca-channel-blocker-angiopine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-veratil---primary/output
  ca-channel-blocker-verapress---primary:
    run: ca-channel-blocker-verapress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-angiopine---primary/output
  ca-channel-blocker-recordati---primary:
    run: ca-channel-blocker-recordati---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-verapress---primary/output
  ca-channel-blocker-100mg---primary:
    run: ca-channel-blocker-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-recordati---primary/output
  ca-channel-blocker-150mg---primary:
    run: ca-channel-blocker-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-100mg---primary/output
  ca-channel-blocker-felogen---primary:
    run: ca-channel-blocker-felogen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-150mg---primary/output
  ca-channel-blocker-125mg---primary:
    run: ca-channel-blocker-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-felogen---primary/output
  ca-channel-blocker-nivaten---primary:
    run: ca-channel-blocker-nivaten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-125mg---primary/output
  ca-channel-blocker-zemtard---primary:
    run: ca-channel-blocker-zemtard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-nivaten---primary/output
  ca-channel-blocker-felotens---primary:
    run: ca-channel-blocker-felotens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-zemtard---primary/output
  ca-channel-blocker-merck---primary:
    run: ca-channel-blocker-merck---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-felotens---primary/output
  ca-channel-blocker-discovery---primary:
    run: ca-channel-blocker-discovery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-merck---primary/output
  ca-channel-blocker-trandolapril---primary:
    run: ca-channel-blocker-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-discovery---primary/output
  ca-channel-blocker-adalat---primary:
    run: ca-channel-blocker-adalat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-trandolapril---primary/output
  ca-channel-blocker-disogram---primary:
    run: ca-channel-blocker-disogram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-adalat---primary/output
  ca-channel-blocker-120mg---primary:
    run: ca-channel-blocker-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-disogram---primary/output
  ca-channel-blocker-tensipine---primary:
    run: ca-channel-blocker-tensipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-120mg---primary/output
  ca-channel-blocker-injection---primary:
    run: ca-channel-blocker-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-tensipine---primary/output
  ca-channel-blocker-ranbaxy---primary:
    run: ca-channel-blocker-ranbaxy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-injection---primary/output
  ca-channel-blocker-abbott---primary:
    run: ca-channel-blocker-abbott---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-ranbaxy---primary/output
  eastern-ca-channel-blocker---primary:
    run: eastern-ca-channel-blocker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-abbott---primary/output
  ca-channel-blocker-mibefradil---primary:
    run: ca-channel-blocker-mibefradil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: eastern-ca-channel-blocker---primary/output
  ca-channel-blocker-tillomed---primary:
    run: ca-channel-blocker-tillomed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-mibefradil---primary/output
  ca-channel-blocker-berkatens---primary:
    run: ca-channel-blocker-berkatens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-tillomed---primary/output
  ca-channel-blocker-nimodrel---primary:
    run: ca-channel-blocker-nimodrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-berkatens---primary/output
  ca-channel-blocker-nifopress---primary:
    run: ca-channel-blocker-nifopress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-nimodrel---primary/output
  ca-channel-blocker-zemret---primary:
    run: ca-channel-blocker-zemret---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-nifopress---primary/output
  ca-channel-blocker-chanelle---primary:
    run: ca-channel-blocker-chanelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-zemret---primary/output
  ca-channel-blocker-elanpharma---primary:
    run: ca-channel-blocker-elanpharma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-chanelle---primary/output
  ca-channel-blocker-hillcross---primary:
    run: ca-channel-blocker-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-elanpharma---primary/output
  ca-channel-blocker-kenzem---primary:
    run: ca-channel-blocker-kenzem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-hillcross---primary/output
  ca-channel-blocker-pliva---primary:
    run: ca-channel-blocker-pliva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-kenzem---primary/output
  ca-channel-blocker-napppharm---primary:
    run: ca-channel-blocker-napppharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-pliva---primary/output
  ca-channel-blocker-neofel---primary:
    run: ca-channel-blocker-neofel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-napppharm---primary/output
  ca-channel-blocker-solution---primary:
    run: ca-channel-blocker-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-neofel---primary/output
  ca-channel-blocker-lacidipine---primary:
    run: ca-channel-blocker-lacidipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-solution---primary/output
  ca-channel-blocker-actavis---primary:
    run: ca-channel-blocker-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-lacidipine---primary/output
  ca-channel-blocker-parmid---primary:
    run: ca-channel-blocker-parmid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-actavis---primary/output
  ca-channel-blocker-novartis---primary:
    run: ca-channel-blocker-novartis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-parmid---primary/output
  ca-channel-blocker-valsartan---primary:
    run: ca-channel-blocker-valsartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-novartis---primary/output
  ca-channel-blocker-neozipine---primary:
    run: ca-channel-blocker-neozipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-valsartan---primary/output
  ca-channel-blocker-valni---primary:
    run: ca-channel-blocker-valni---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-neozipine---primary/output
  ca-channel-blocker-pfizer---primary:
    run: ca-channel-blocker-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-valni---primary/output
  ca-channel-blocker-roche---primary:
    run: ca-channel-blocker-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-pfizer---primary/output
  ca-channel-blocker-coated---primary:
    run: ca-channel-blocker-coated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-roche---primary/output
  ca-channel-blocker-focus---primary:
    run: ca-channel-blocker-focus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-coated---primary/output
  ca-channel-blocker-amlodipine---primary:
    run: ca-channel-blocker-amlodipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-focus---primary/output
  ca-channel-blocker-daiicsank---primary:
    run: ca-channel-blocker-daiicsank---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-amlodipine---primary/output
  ca-channel-blocker-hydrochlorothiazide---primary:
    run: ca-channel-blocker-hydrochlorothiazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-daiicsank---primary/output
  ca-channel-blocker-goldshield---primary:
    run: ca-channel-blocker-goldshield---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-hydrochlorothiazide---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: ca-channel-blocker-goldshield---primary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
