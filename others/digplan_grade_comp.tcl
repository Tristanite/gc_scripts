## BM Grade computation using cu_best_raw within the digplan

# Set variables

set year 2026
set month 202601
set bench "b +195"
set top_bench 210
set bottom_bench 195
set digname dig_plan_195n_138bo_20260101
set confile dig_plan_195n_138bo_20260101


# Set directories

set digplan_dir "B:/02_GRADE_CONTROL/01_Blasthole Dat/Dig Plan (Important)"
set folder_path "${digplan_dir}/${bench}/${year}/${month}"
set result_folder "${folder_path}"

set digplan_str "${folder_path}/${digname}.str"
set constraint_file "${result_folder}/${confile}"

set status [SclFunction "BM GRAPHICS CONSTRAIN ADD" {
  frm20111={
    {
      constraints=table { not op contype location id extension rnga rngb lbound ubound ext } {
        { "" "INSIDE" "STRING" "${digplan_str}" "str" "" "" "" "" "z" }
        { "" "" "" "" "" "" "" "" "" "" "" }
      }
      conexp=""
      confile="${constraint_file}"
      allowOverlapping="N"
      keep_blocks="N"
    }
  }
}]


# Volume and tonnage reporting

set status [SclFunction "BM VOL TON REPORT" {

  frm20104={
    {
      fname=""
      report_name="${result_folder}/${digname}"
      report_format=".csv"
      report_type="Standard"
      ik_cutoffs="No"
      ikMeanGrade="cutoffMean"
      constrain="Yes"
    }
  }

  frm20195={
    {
      rpt_desc_1=""
      report_attributes={
        {
          rpt_attribute="cu_best_raw"
          rpt_display="Yes"
          low_cut=null
          upper_cut=null
          rpt_attribute_wt="Volume"
          rpt_attribute_avg="Average"
          rpt_expression=null
        }
      }
      use_vol="No"
      Format_head="Yes"
      fillAllCells="Yes"
      pivotCompatible="Yes"
      cullEmpty="Yes"
      volDecimals="2 decimal places"
      geometryType="None"
      vol_mult_factor="Attribute"
      mult_factor_att_name="sg"
      group_attributes=table { group_field numeric_range } {
        { "rescat1" null }
        { "cu_best_raw" "0.00;0.12;0.18;0.20;999" }
        { "z" "${top_bench},${bottom_bench},-15" }
      }
    }
  }

  frm20194={
    {
      values_check1="YES"
    }
  }

  frm20111={
    {
      constraints=table { not op contype location id extension rnga rngb lbound ubound ext } {
        { "" "INSIDE" "CONSTRAINT" "${constraint_file}" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
      }
      conexp=""
      confile=""
      allowOverlapping="N"
      keep_blocks="N"
    }
  }
}]

puts "Digplan computation is done"
