######################################################################
#
# Macro Name    : d:/kworking/gc_scripts/others/dig_comp.tcl
#
# Version       : Surpac 7.6.3 (x64)
#
# Creation Date : Wed Jan 14 11:06:20 2026
#
# Description   : 
#
######################################################################

set status [ SclFunction "BM GRAPHICS CONSTRAIN ADD" {
  frm20111={
    {
      constraints=table { not op contype location id extension rnga rngb lbound ubound ext } {
        { "" "INSIDE" "STRING" "B:/02_GRADE_CONTROL/01_BLASTHOLE DAT/DIG PLAN (IMPORTANT)/B +195/2026/202601/DIG_PLAN_195N_138BO_" "20260101" "str" "" "" "" "" "z" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
      }
      conexp=""
      confile="b195_138bo"
      allowOverlapping="N"
      keep_blocks="N"
    }
  }
}]

set status [ SclFunction "BM VOL TON REPORT" {
  frm20104={
    {
      fname=""
      report_name="b195_138bo"
      report_format=".csv - Comma Separated (Spreadsheet)"
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
        { "z" "210,195,-15" }
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
        { "" "INSIDE" "CONSTRAINT" "B195_138BO" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
        { "" "" "" "" "" "" "" "" "" "" "" }
      }
      conexp=""
      confile=""
      allowOverlapping="N"
      keep_blocks="N"
    }
  }
}]

