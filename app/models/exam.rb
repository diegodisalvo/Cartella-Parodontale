class Exam < ActiveRecord::Base
  belongs_to :patient

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ['id','dente', 'sito', 'tasca', 'recessione', 'BOP', 'placca', 'essudato', 'mobilità', 'forca', 'familiarità', 'allergia', 'stress', 'fumo']
      all.each do |e|
        if e.e18[0] == 0
          # e18 MV
          csv << [e.id, '18', 'MV', e.e18[4], e.e18[10], e.e18[26], e.e18[32], e.e18[38], e.e18[23], e.e18[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e18 VV
          csv << [e.id, '18', 'V', e.e18[4], e.e18[9], e.e18[25], e.e18[31], e.e18[37], e.e18[23], e.e18[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e18 DV
          csv << [e.id, '18', 'DV', e.e18[2], e.e18[8], e.e18[24], e.e18[30], e.e18[36], e.e18[23], e.e18[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e18 MP
          csv << [e.id, '18', 'MP', e.e18[7], e.e18[10], e.e18[29], e.e18[35], e.e18[41], e.e18[23], e.e18[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e18 PP
          csv << [e.id, '18', 'P', e.e18[6], e.e18[9], e.e18[28], e.e18[34], e.e18[40], e.e18[23], e.e18[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e18 DP
          csv << [e.id, '18', 'DP', e.e18[5], e.e18[8], e.e18[27], e.e18[33], e.e18[39], e.e18[23], e.e18[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 18

        if e.e17[0] == 0
          # e17 MV
          csv << [e.id, '17', 'MV', e.e17[4], e.e17[10], e.e17[26], e.e17[32], e.e17[38], e.e17[23], e.e17[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e17 VV
          csv << [e.id, '17', 'V', e.e17[4], e.e17[9], e.e17[25], e.e17[31], e.e17[37], e.e17[23], e.e17[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e17 DV
          csv << [e.id, '17', 'DV', e.e17[2], e.e17[8], e.e17[24], e.e17[30], e.e17[36], e.e17[23], e.e17[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e17 MP
          csv << [e.id, '17', 'MP', e.e17[7], e.e17[10], e.e17[29], e.e17[35], e.e17[41], e.e17[23], e.e17[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e17 PP
          csv << [e.id, '17', 'P', e.e17[6], e.e17[9], e.e17[28], e.e17[34], e.e17[40], e.e17[23], e.e17[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e17 DP
          csv << [e.id, '17', 'DP', e.e17[5], e.e17[8], e.e17[27], e.e17[33], e.e17[39], e.e17[23], e.e17[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 17

        if e.e16[0] == 0
          # e16 MV
          csv << [e.id, '16', 'MV', e.e16[4], e.e16[10], e.e16[26], e.e16[32], e.e16[38], e.e16[23], e.e16[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e16 VV
          csv << [e.id, '16', 'V', e.e16[4], e.e16[9], e.e16[25], e.e16[31], e.e16[37], e.e16[23], e.e16[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e16 DV
          csv << [e.id, '16', 'DV', e.e16[2], e.e16[8], e.e16[24], e.e16[30], e.e16[36], e.e16[23], e.e16[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e16 MP
          csv << [e.id, '16', 'MP', e.e16[7], e.e16[10], e.e16[29], e.e16[35], e.e16[41], e.e16[23], e.e16[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e16 PP
          csv << [e.id, '16', 'P', e.e16[6], e.e16[9], e.e16[28], e.e16[34], e.e16[40], e.e16[23], e.e16[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e16 DP
          csv << [e.id, '16', 'DP', e.e16[5], e.e16[8], e.e16[27], e.e16[33], e.e16[39], e.e16[23], e.e16[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 16

        if e.e15[0] == 0
          # e15 MV
          csv << [e.id, '15', 'MV', e.e15[4], e.e15[10], e.e15[25], e.e15[31], e.e15[37], e.e15[22], e.e15[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e15 VV
          csv << [e.id, '15', 'V', e.e15[3], e.e15[9], e.e15[24], e.e15[30], e.e15[36], e.e15[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e15 DV
          csv << [e.id, '15', 'DV', e.e15[2], e.e15[8], e.e15[23], e.e15[29], e.e15[35], e.e15[22], e.e15[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e15 MP
          csv << [e.id, '15', 'MP', e.e15[7], e.e15[10], e.e15[28], e.e15[34], e.e15[40], e.e15[22], e.e15[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e15 PP
          csv << [e.id, '15', 'P', e.e15[6], e.e15[9], e.e15[27], e.e15[33], e.e15[39], e.e15[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e15 DP
          csv << [e.id, '15', 'DP', e.e15[5], e.e15[8], e.e15[26], e.e15[32], e.e15[38], e.e15[22], e.e15[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 15

        if e.e14[0] == 0
          # e14 MV
          csv << [e.id, '14', 'MV', e.e14[4], e.e14[10], e.e14[25], e.e14[31], e.e14[37], e.e14[22], e.e14[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e14 VV
          csv << [e.id, '14', 'V', e.e14[3], e.e14[9], e.e14[24], e.e14[30], e.e14[36], e.e14[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e14 DV
          csv << [e.id, '14', 'DV', e.e14[2], e.e14[8], e.e14[23], e.e14[29], e.e14[35], e.e14[22], e.e14[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e14 MP
          csv << [e.id, '14', 'MP', e.e14[7], e.e14[10], e.e14[28], e.e14[34], e.e14[40], e.e14[22], e.e14[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e14 PP
          csv << [e.id, '14', 'P', e.e14[6], e.e14[9], e.e14[27], e.e14[33], e.e14[39], e.e14[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e14 DP
          csv << [e.id, '14', 'DP', e.e14[5], e.e14[8], e.e14[26], e.e14[32], e.e14[38], e.e14[22], e.e14[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 14

        if e.e13[0] == 0
          # e13 MV
          csv << [e.id, '13', 'MV', e.e13[4], e.e13[10], e.e13[23], e.e13[27], e.e13[35], e.e13[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e13 VV
          csv << [e.id, '13', 'V', e.e13[3], e.e13[9], e.e13[22], e.e13[26], e.e13[34], e.e13[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e13 DV
          csv << [e.id, '13', 'DV', e.e13[2], e.e13[8], e.e13[21], e.e13[25], e.e13[33], e.e13[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e13 MP
          csv << [e.id, '13', 'MP', e.e13[7], e.e13[10], e.e13[28], e.e13[34], e.e13[38], e.e13[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e13 PP
          csv << [e.id, '13', 'P', e.e13[6], e.e13[9], e.e13[27], e.e13[33], e.e13[37], e.e13[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e13 DP
          csv << [e.id, '13', 'DP', e.e13[5], e.e13[8], e.e13[26], e.e13[32], e.e13[36], e.e13[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 13

        if e.e12[0] == 0
          # e12 MV
          csv << [e.id, '12', 'MV', e.e12[4], e.e12[10], e.e12[23], e.e12[27], e.e12[35], e.e12[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e12 VV
          csv << [e.id, '12', 'V', e.e12[3], e.e12[9], e.e12[22], e.e12[26], e.e12[34], e.e12[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e12 DV
          csv << [e.id, '12', 'DV', e.e12[2], e.e12[8], e.e12[21], e.e12[25], e.e12[33], e.e12[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e12 MP
          csv << [e.id, '12', 'MP', e.e12[7], e.e12[10], e.e12[28], e.e12[34], e.e12[38], e.e12[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e12 PP
          csv << [e.id, '12', 'P', e.e12[6], e.e12[9], e.e12[27], e.e12[33], e.e12[37], e.e12[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e12 DP
          csv << [e.id, '12', 'DP', e.e12[5], e.e12[8], e.e12[26], e.e12[32], e.e12[36], e.e12[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 12

        if e.e11[0] == 0
          # e11 MV
          csv << [e.id, '11', 'MV', e.e11[4], e.e11[10], e.e11[23], e.e11[27], e.e11[35], e.e11[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e11 VV
          csv << [e.id, '11', 'V', e.e11[3], e.e11[9], e.e11[22], e.e11[26], e.e11[34], e.e11[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e11 DV
          csv << [e.id, '11', 'DV', e.e11[2], e.e11[8], e.e11[21], e.e11[25], e.e11[33], e.e11[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e11 MP
          csv << [e.id, '11', 'MP', e.e11[7], e.e11[10], e.e11[28], e.e11[34], e.e11[38], e.e11[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e11 PP
          csv << [e.id, '11', 'P', e.e11[6], e.e11[9], e.e11[27], e.e11[33], e.e11[37], e.e11[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e11 DP
          csv << [e.id, '11', 'DP', e.e11[5], e.e11[8], e.e11[26], e.e11[32], e.e11[36], e.e11[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 11

        if e.e21[0] == 0
          # e21 MV
          csv << [e.id, '21', 'MV', e.e21[4], e.e21[10], e.e21[23], e.e21[27], e.e21[35], e.e21[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e21 VV
          csv << [e.id, '21', 'V', e.e21[3], e.e21[9], e.e21[22], e.e21[26], e.e21[34], e.e21[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e21 DV
          csv << [e.id, '21', 'DV', e.e21[2], e.e21[8], e.e21[21], e.e21[25], e.e21[33], e.e21[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e21 MP
          csv << [e.id, '21', 'MP', e.e21[7], e.e21[10], e.e21[28], e.e21[34], e.e21[38], e.e21[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e21 PP
          csv << [e.id, '21', 'P', e.e21[6], e.e21[9], e.e21[27], e.e21[33], e.e21[37], e.e21[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e21 DP
          csv << [e.id, '21', 'DP', e.e21[5], e.e21[8], e.e21[26], e.e21[32], e.e21[36], e.e21[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 21

        if e.e22[0] == 0
          # e22 MV
          csv << [e.id, '22', 'MV', e.e22[4], e.e22[10], e.e22[23], e.e22[27], e.e22[35], e.e22[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e22 VV
          csv << [e.id, '22', 'V', e.e22[3], e.e22[9], e.e22[22], e.e22[26], e.e22[34], e.e22[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e22 DV
          csv << [e.id, '22', 'DV', e.e22[2], e.e22[8], e.e22[21], e.e22[25], e.e22[33], e.e22[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e22 MP
          csv << [e.id, '22', 'MP', e.e22[7], e.e22[10], e.e22[28], e.e22[34], e.e22[38], e.e22[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e22 PP
          csv << [e.id, '22', 'P', e.e22[6], e.e22[9], e.e22[27], e.e22[33], e.e22[37], e.e22[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e22 DP
          csv << [e.id, '22', 'DP', e.e22[5], e.e22[8], e.e22[26], e.e22[32], e.e22[36], e.e22[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 22

        if e.e23[0] == 0
          # e23 MV
          csv << [e.id, '23', 'MV', e.e23[4], e.e23[10], e.e23[23], e.e23[27], e.e23[35], e.e23[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e23 VV
          csv << [e.id, '23', 'V', e.e23[3], e.e23[9], e.e23[22], e.e23[26], e.e23[34], e.e23[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e23 DV
          csv << [e.id, '23', 'DV', e.e23[2], e.e23[8], e.e23[21], e.e23[25], e.e23[33], e.e23[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e23 MP
          csv << [e.id, '23', 'MP', e.e23[7], e.e23[10], e.e23[28], e.e23[34], e.e23[38], e.e23[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e23 PP
          csv << [e.id, '23', 'P', e.e23[6], e.e23[9], e.e23[27], e.e23[33], e.e23[37], e.e23[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e23 DP
          csv << [e.id, '23', 'DP', e.e23[5], e.e23[8], e.e23[26], e.e23[32], e.e23[36], e.e23[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 23

        if e.e24[0] == 0
          # e24 MV
          csv << [e.id, '24', 'MV', e.e24[4], e.e24[10], e.e24[25], e.e24[31], e.e24[37], e.e24[22], e.e24[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e24 VV
          csv << [e.id, '24', 'V', e.e24[3], e.e24[9], e.e24[24], e.e24[30], e.e24[36], e.e24[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e24 DV
          csv << [e.id, '24', 'DV', e.e24[2], e.e24[8], e.e24[23], e.e24[29], e.e24[35], e.e24[22], e.e24[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e24 MP
          csv << [e.id, '24', 'MP', e.e24[7], e.e24[10], e.e24[28], e.e24[34], e.e24[40], e.e24[22], e.e24[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e24 PP
          csv << [e.id, '24', 'P', e.e24[6], e.e24[9], e.e24[27], e.e24[33], e.e24[39], e.e24[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e24 DP
          csv << [e.id, '24', 'DP', e.e24[5], e.e24[8], e.e24[26], e.e24[32], e.e24[38], e.e24[22], e.e24[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 24

        if e.e25[0] == 0
          # e25 MV
          csv << [e.id, '25', 'MV', e.e25[4], e.e25[10], e.e25[25], e.e25[31], e.e25[37], e.e25[22], e.e25[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e25 VV
          csv << [e.id, '25', 'V', e.e25[3], e.e25[9], e.e25[24], e.e25[30], e.e25[36], e.e25[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e25 DV
          csv << [e.id, '25', 'DV', e.e25[2], e.e25[8], e.e25[23], e.e25[29], e.e25[35], e.e25[22], e.e25[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e25 MP
          csv << [e.id, '25', 'MP', e.e25[7], e.e25[10], e.e25[28], e.e25[34], e.e25[40], e.e25[22], e.e25[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e25 PP
          csv << [e.id, '25', 'P', e.e25[6], e.e25[9], e.e25[27], e.e25[33], e.e25[39], e.e25[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e25 DP
          csv << [e.id, '25', 'DP', e.e25[5], e.e25[8], e.e25[26], e.e25[32], e.e25[38], e.e25[22], e.e25[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 25

        if e.e26[0] == 0
          # e26 MV
          csv << [e.id, '26', 'MV', e.e26[4], e.e26[10], e.e26[26], e.e26[32], e.e26[38], e.e26[23], e.e26[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e26 VV
          csv << [e.id, '26', 'V', e.e26[4], e.e26[9], e.e26[25], e.e26[31], e.e26[37], e.e26[23], e.e26[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e26 DV
          csv << [e.id, '26', 'DV', e.e26[2], e.e26[8], e.e26[24], e.e26[30], e.e26[36], e.e26[23], e.e26[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e26 MP
          csv << [e.id, '26', 'MP', e.e26[7], e.e26[10], e.e26[29], e.e26[35], e.e26[41], e.e26[23], e.e26[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e26 PP
          csv << [e.id, '26', 'P', e.e26[6], e.e26[9], e.e26[28], e.e26[34], e.e26[40], e.e26[23], e.e26[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e26 DP
          csv << [e.id, '26', 'DP', e.e26[5], e.e26[8], e.e26[27], e.e26[33], e.e26[39], e.e26[23], e.e26[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 26

        if e.e27[0] == 0
          # e27 MV
          csv << [e.id, '27', 'MV', e.e27[4], e.e27[10], e.e27[26], e.e27[32], e.e27[38], e.e27[23], e.e27[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e27 VV
          csv << [e.id, '27', 'V', e.e27[4], e.e27[9], e.e27[25], e.e27[31], e.e27[37], e.e27[23], e.e27[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e27 DV
          csv << [e.id, '27', 'DV', e.e27[2], e.e27[8], e.e27[24], e.e27[30], e.e27[36], e.e27[23], e.e27[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e27 MP
          csv << [e.id, '27', 'MP', e.e27[7], e.e27[10], e.e27[29], e.e27[35], e.e27[41], e.e27[23], e.e27[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e27 PP
          csv << [e.id, '27', 'P', e.e27[6], e.e27[9], e.e27[28], e.e27[34], e.e27[40], e.e27[23], e.e27[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e27 DP
          csv << [e.id, '27', 'DP', e.e27[5], e.e27[8], e.e27[27], e.e27[33], e.e27[39], e.e27[23], e.e27[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 17

        if e.e28[0] == 0
          # e28 MV
          csv << [e.id, '28', 'MV', e.e28[4], e.e28[10], e.e28[26], e.e28[32], e.e28[38], e.e28[23], e.e28[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e28 VV
          csv << [e.id, '28', 'V', e.e28[4], e.e28[9], e.e28[25], e.e28[31], e.e28[37], e.e28[23], e.e28[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e28 DV
          csv << [e.id, '28', 'DV', e.e28[2], e.e28[8], e.e28[24], e.e28[30], e.e28[36], e.e28[23], e.e28[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e28 MP
          csv << [e.id, '28', 'MP', e.e28[7], e.e28[10], e.e28[29], e.e28[35], e.e28[41], e.e28[23], e.e28[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e28 PP
          csv << [e.id, '28', 'P', e.e28[6], e.e28[9], e.e28[28], e.e28[34], e.e28[40], e.e28[23], e.e28[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e28 DP
          csv << [e.id, '28', 'DP', e.e28[5], e.e28[8], e.e28[27], e.e28[33], e.e28[39], e.e28[23], e.e28[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 28

        # arcata inferiore
        if e.e48[0] == 0
          # e48 MV
          csv << [e.id, '48', 'MV', e.e48[4], e.e48[10], e.e48[26], e.e48[32], e.e48[38], e.e48[23], e.e48[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e48 VV
          csv << [e.id, '48', 'V', e.e48[4], e.e48[9], e.e48[25], e.e48[31], e.e48[37], e.e48[23], e.e48[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e48 DV
          csv << [e.id, '48', 'DV', e.e48[2], e.e48[8], e.e48[24], e.e48[30], e.e48[36], e.e48[23], e.e48[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e48 MP
          csv << [e.id, '48', 'MP', e.e48[7], e.e48[10], e.e48[29], e.e48[35], e.e48[41], e.e48[23], e.e48[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e48 PP
          csv << [e.id, '48', 'P', e.e48[6], e.e48[9], e.e48[28], e.e48[34], e.e48[40], e.e48[23], e.e48[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e48 DP
          csv << [e.id, '48', 'DP', e.e48[5], e.e48[8], e.e48[27], e.e48[33], e.e48[39], e.e48[23], e.e48[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 48

        if e.e47[0] == 0
          # e47 MV
          csv << [e.id, '47', 'MV', e.e47[4], e.e47[10], e.e47[26], e.e47[32], e.e47[38], e.e47[23], e.e47[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e47 VV
          csv << [e.id, '47', 'V', e.e47[4], e.e47[9], e.e47[25], e.e47[31], e.e47[37], e.e47[23], e.e47[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e47 DV
          csv << [e.id, '47', 'DV', e.e47[2], e.e47[8], e.e47[24], e.e47[30], e.e47[36], e.e47[23], e.e47[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e47 MP
          csv << [e.id, '47', 'MP', e.e47[7], e.e47[10], e.e47[29], e.e47[35], e.e47[41], e.e47[23], e.e47[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e47 PP
          csv << [e.id, '47', 'P', e.e47[6], e.e47[9], e.e47[28], e.e47[34], e.e47[40], e.e47[23], e.e47[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e47 DP
          csv << [e.id, '47', 'DP', e.e47[5], e.e47[8], e.e47[27], e.e47[33], e.e47[39], e.e47[23], e.e47[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 47

        if e.e46[0] == 0
          # e46 MV
          csv << [e.id, '46', 'MV', e.e46[4], e.e46[10], e.e46[26], e.e46[32], e.e46[38], e.e46[23], e.e46[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e46 VV
          csv << [e.id, '46', 'V', e.e46[4], e.e46[9], e.e46[25], e.e46[31], e.e46[37], e.e46[23], e.e46[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e46 DV
          csv << [e.id, '46', 'DV', e.e46[2], e.e46[8], e.e46[24], e.e46[30], e.e46[36], e.e46[23], e.e46[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e46 MP
          csv << [e.id, '46', 'MP', e.e46[7], e.e46[10], e.e46[29], e.e46[35], e.e46[41], e.e46[23], e.e46[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e46 PP
          csv << [e.id, '46', 'P', e.e46[6], e.e46[9], e.e46[28], e.e46[34], e.e46[40], e.e46[23], e.e46[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e46 DP
          csv << [e.id, '46', 'DP', e.e46[5], e.e46[8], e.e46[27], e.e46[33], e.e46[39], e.e46[23], e.e46[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 46

        if e.e45[0] == 0
          # e45 MV
          csv << [e.id, '45', 'MV', e.e45[4], e.e45[10], e.e45[25], e.e45[31], e.e45[37], e.e45[22], e.e45[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e45 VV
          csv << [e.id, '45', 'V', e.e45[3], e.e45[9], e.e45[24], e.e45[30], e.e45[36], e.e45[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e45 DV
          csv << [e.id, '45', 'DV', e.e45[2], e.e45[8], e.e45[23], e.e45[29], e.e45[35], e.e45[22], e.e45[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e45 MP
          csv << [e.id, '45', 'MP', e.e45[7], e.e45[10], e.e45[28], e.e45[34], e.e45[40], e.e45[22], e.e45[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e45 PP
          csv << [e.id, '45', 'P', e.e45[6], e.e45[9], e.e45[27], e.e45[33], e.e45[39], e.e45[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e45 DP
          csv << [e.id, '45', 'DP', e.e45[5], e.e45[8], e.e45[26], e.e45[32], e.e45[38], e.e45[22], e.e45[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 45

        if e.e44[0] == 0
          # e44 MV
          csv << [e.id, '44', 'MV', e.e44[4], e.e44[10], e.e44[25], e.e44[31], e.e44[37], e.e44[22], e.e44[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e44 VV
          csv << [e.id, '44', 'V', e.e44[3], e.e44[9], e.e44[24], e.e44[30], e.e44[36], e.e44[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e44 DV
          csv << [e.id, '44', 'DV', e.e44[2], e.e44[8], e.e44[23], e.e44[29], e.e44[35], e.e44[22], e.e44[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e44 MP
          csv << [e.id, '44', 'MP', e.e44[7], e.e44[10], e.e44[28], e.e44[34], e.e44[40], e.e44[22], e.e44[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e44 PP
          csv << [e.id, '44', 'P', e.e44[6], e.e44[9], e.e44[27], e.e44[33], e.e44[39], e.e44[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e44 DP
          csv << [e.id, '44', 'DP', e.e44[5], e.e44[8], e.e44[26], e.e44[32], e.e44[38], e.e44[22], e.e44[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 44

        if e.e43[0] == 0
          # e43 MV
          csv << [e.id, '43', 'MV', e.e43[4], e.e43[10], e.e43[23], e.e43[27], e.e43[35], e.e43[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e43 VV
          csv << [e.id, '43', 'V', e.e43[3], e.e43[9], e.e43[22], e.e43[26], e.e43[34], e.e43[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e43 DV
          csv << [e.id, '43', 'DV', e.e43[2], e.e43[8], e.e43[21], e.e43[25], e.e43[33], e.e43[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e43 MP
          csv << [e.id, '43', 'MP', e.e43[7], e.e43[10], e.e43[28], e.e43[34], e.e43[38], e.e43[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e43 PP
          csv << [e.id, '43', 'P', e.e43[6], e.e43[9], e.e43[27], e.e43[33], e.e43[37], e.e43[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e43 DP
          csv << [e.id, '43', 'DP', e.e43[5], e.e43[8], e.e43[26], e.e43[32], e.e43[36], e.e43[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 13

        if e.e42[0] == 0
          # e42 MV
          csv << [e.id, '42', 'MV', e.e42[4], e.e42[10], e.e42[23], e.e42[27], e.e42[35], e.e42[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e42 VV
          csv << [e.id, '42', 'V', e.e42[3], e.e42[9], e.e42[22], e.e42[26], e.e42[34], e.e42[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e42 DV
          csv << [e.id, '42', 'DV', e.e42[2], e.e42[8], e.e42[21], e.e42[25], e.e42[33], e.e42[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e42 MP
          csv << [e.id, '42', 'MP', e.e42[7], e.e42[10], e.e42[28], e.e42[34], e.e42[38], e.e42[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e42 PP
          csv << [e.id, '42', 'P', e.e42[6], e.e42[9], e.e42[27], e.e42[33], e.e42[37], e.e42[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e42 DP
          csv << [e.id, '42', 'DP', e.e42[5], e.e42[8], e.e42[26], e.e42[32], e.e42[36], e.e42[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 42

        if e.e41[0] == 0
          # e41 MV
          csv << [e.id, '41', 'MV', e.e41[4], e.e41[10], e.e41[23], e.e41[27], e.e41[35], e.e41[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e41 VV
          csv << [e.id, '41', 'V', e.e41[3], e.e41[9], e.e41[22], e.e41[26], e.e41[34], e.e41[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e41 DV
          csv << [e.id, '41', 'DV', e.e41[2], e.e41[8], e.e41[21], e.e41[25], e.e41[33], e.e41[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e41 MP
          csv << [e.id, '41', 'MP', e.e41[7], e.e41[10], e.e41[28], e.e41[34], e.e41[38], e.e41[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e41 PP
          csv << [e.id, '41', 'P', e.e41[6], e.e41[9], e.e41[27], e.e41[33], e.e41[37], e.e41[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e41 DP
          csv << [e.id, '41', 'DP', e.e41[5], e.e41[8], e.e41[26], e.e41[32], e.e41[36], e.e41[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 41

        if e.e31[0] == 0
          # e31 MV
          csv << [e.id, '31', 'MV', e.e31[4], e.e31[10], e.e31[23], e.e31[27], e.e31[35], e.e31[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e31 VV
          csv << [e.id, '31', 'V', e.e31[3], e.e31[9], e.e31[22], e.e31[26], e.e31[34], e.e31[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e31 DV
          csv << [e.id, '31', 'DV', e.e31[2], e.e31[8], e.e31[21], e.e31[25], e.e31[33], e.e31[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e31 MP
          csv << [e.id, '31', 'MP', e.e31[7], e.e31[10], e.e31[28], e.e31[34], e.e31[38], e.e31[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e31 PP
          csv << [e.id, '31', 'P', e.e31[6], e.e31[9], e.e31[27], e.e31[33], e.e31[37], e.e31[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e31 DP
          csv << [e.id, '31', 'DP', e.e31[5], e.e31[8], e.e31[26], e.e31[32], e.e31[36], e.e31[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 31

        if e.e32[0] == 0
          # e32 MV
          csv << [e.id, '32', 'MV', e.e32[4], e.e32[10], e.e32[23], e.e32[27], e.e32[35], e.e32[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e32 VV
          csv << [e.id, '32', 'V', e.e32[3], e.e32[9], e.e32[22], e.e32[26], e.e32[34], e.e32[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e32 DV
          csv << [e.id, '32', 'DV', e.e32[2], e.e32[8], e.e32[21], e.e32[25], e.e32[33], e.e32[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e32 MP
          csv << [e.id, '32', 'MP', e.e32[7], e.e32[10], e.e32[28], e.e32[34], e.e32[38], e.e32[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e32 PP
          csv << [e.id, '32', 'P', e.e32[6], e.e32[9], e.e32[27], e.e32[33], e.e32[37], e.e32[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e32 DP
          csv << [e.id, '32', 'DP', e.e32[5], e.e32[8], e.e32[26], e.e32[32], e.e32[36], e.e32[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 32

        if e.e33[0] == 0
          # e33 MV
          csv << [e.id, '33', 'MV', e.e33[4], e.e33[10], e.e33[23], e.e33[27], e.e33[35], e.e33[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e33 VV
          csv << [e.id, '33', 'V', e.e33[3], e.e33[9], e.e33[22], e.e33[26], e.e33[34], e.e33[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e33 DV
          csv << [e.id, '33', 'DV', e.e33[2], e.e33[8], e.e33[21], e.e33[25], e.e33[33], e.e33[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e33 MP
          csv << [e.id, '33', 'MP', e.e33[7], e.e33[10], e.e33[28], e.e33[34], e.e33[38], e.e33[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e33 PP
          csv << [e.id, '33', 'P', e.e33[6], e.e33[9], e.e33[27], e.e33[33], e.e33[37], e.e33[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e33 DP
          csv << [e.id, '33', 'DP', e.e33[5], e.e33[8], e.e33[26], e.e33[32], e.e33[36], e.e33[20], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 33

        if e.e34[0] == 0
          # e34 MV
          csv << [e.id, '34', 'MV', e.e34[4], e.e34[10], e.e34[25], e.e34[31], e.e34[37], e.e34[22], e.e34[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e34 VV
          csv << [e.id, '34', 'V', e.e34[3], e.e34[9], e.e34[24], e.e34[30], e.e34[36], e.e34[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e34 DV
          csv << [e.id, '34', 'DV', e.e34[2], e.e34[8], e.e34[23], e.e34[29], e.e34[35], e.e34[22], e.e34[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e34 MP
          csv << [e.id, '34', 'MP', e.e34[7], e.e34[10], e.e34[28], e.e34[34], e.e34[40], e.e34[22], e.e34[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e34 PP
          csv << [e.id, '34', 'P', e.e34[6], e.e34[9], e.e34[27], e.e34[33], e.e34[39], e.e34[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e34 DP
          csv << [e.id, '34', 'DP', e.e34[5], e.e34[8], e.e34[26], e.e34[32], e.e34[38], e.e34[22], e.e34[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 34

        if e.e35[0] == 0
          # e35 MV
          csv << [e.id, '35', 'MV', e.e35[4], e.e35[10], e.e35[25], e.e35[31], e.e35[37], e.e35[22], e.e35[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e35 VV
          csv << [e.id, '35', 'V', e.e35[3], e.e35[9], e.e35[24], e.e35[30], e.e35[36], e.e35[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e35 DV
          csv << [e.id, '35', 'DV', e.e35[2], e.e35[8], e.e35[23], e.e35[29], e.e35[35], e.e35[22], e.e35[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e35 MP
          csv << [e.id, '35', 'MP', e.e35[7], e.e35[10], e.e35[28], e.e35[34], e.e35[40], e.e35[22], e.e35[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e35 PP
          csv << [e.id, '35', 'P', e.e35[6], e.e35[9], e.e35[27], e.e35[33], e.e35[39], e.e35[22], 0, if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e35 DP
          csv << [e.id, '35', 'DP', e.e35[5], e.e35[8], e.e35[26], e.e35[32], e.e35[38], e.e35[22], e.e35[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 35

        if e.e36[0] == 0
          # e36 MV
          csv << [e.id, '36', 'MV', e.e36[4], e.e36[10], e.e36[26], e.e36[32], e.e36[38], e.e36[23], e.e36[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e36 VV
          csv << [e.id, '36', 'V', e.e36[4], e.e36[9], e.e36[25], e.e36[31], e.e36[37], e.e36[23], e.e36[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e36 DV
          csv << [e.id, '36', 'DV', e.e36[2], e.e36[8], e.e36[24], e.e36[30], e.e36[36], e.e36[23], e.e36[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e36 MP
          csv << [e.id, '36', 'MP', e.e36[7], e.e36[10], e.e36[29], e.e36[35], e.e36[41], e.e36[23], e.e36[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e36 PP
          csv << [e.id, '36', 'P', e.e36[6], e.e36[9], e.e36[28], e.e36[34], e.e36[40], e.e36[23], e.e36[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e36 DP
          csv << [e.id, '36', 'DP', e.e36[5], e.e36[8], e.e36[27], e.e36[33], e.e36[39], e.e36[23], e.e36[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 36

        if e.e37[0] == 0
          # e37 MV
          csv << [e.id, '37', 'MV', e.e37[4], e.e37[10], e.e37[26], e.e37[32], e.e37[38], e.e37[23], e.e37[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e37 VV
          csv << [e.id, '37', 'V', e.e37[4], e.e37[9], e.e37[25], e.e37[31], e.e37[37], e.e37[23], e.e37[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e37 DV
          csv << [e.id, '37', 'DV', e.e37[2], e.e37[8], e.e37[24], e.e37[30], e.e37[36], e.e37[23], e.e37[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e37 MP
          csv << [e.id, '37', 'MP', e.e37[7], e.e37[10], e.e37[29], e.e37[35], e.e37[41], e.e37[23], e.e37[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e37 PP
          csv << [e.id, '37', 'P', e.e37[6], e.e37[9], e.e37[28], e.e37[34], e.e37[40], e.e37[23], e.e37[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e37 DP
          csv << [e.id, '37', 'DP', e.e37[5], e.e37[8], e.e37[27], e.e37[33], e.e37[39], e.e37[23], e.e37[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 37

        if e.e38[0] == 0
          # e38 MV
          csv << [e.id, '38', 'MV', e.e38[4], e.e38[10], e.e38[26], e.e38[32], e.e38[38], e.e38[23], e.e38[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e38 VV
          csv << [e.id, '38', 'V', e.e38[4], e.e38[9], e.e38[25], e.e38[31], e.e38[37], e.e38[23], e.e38[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e38 DV
          csv << [e.id, '38', 'DV', e.e38[2], e.e38[8], e.e38[24], e.e38[30], e.e38[36], e.e38[23], e.e38[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e38 MP
          csv << [e.id, '38', 'MP', e.e38[7], e.e38[10], e.e38[29], e.e38[35], e.e38[41], e.e38[23], e.e38[20], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e38 PP
          csv << [e.id, '38', 'P', e.e38[6], e.e38[9], e.e38[28], e.e38[34], e.e38[40], e.e38[23], e.e38[21], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]

          # e38 DP
          csv << [e.id, '38', 'DP', e.e38[5], e.e38[8], e.e38[27], e.e38[33], e.e38[39], e.e38[23], e.e38[22], if e.patient.familiarity == false then 0 else 1 end, if e.patient.allergies == 'nessuna' then 0 else 1 end, if e.patient.smoker == false then 0 else 1 end]
        end #end of 38


      end #end of loop each
    end #end of CSV
  end #end of self.to_csv
end
