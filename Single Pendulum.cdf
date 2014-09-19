(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     26274,        653]
NotebookOptionsPosition[     25799,        613]
NotebookOutlinePosition[     26157,        629]
CellTagsIndexPosition[     26114,        626]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[StyleBox["Single 2D Pendulum",
 FontColor->RGBColor[1, 0.5, 0]]], "Title",
 CellChangeTimes->{{3.619480004044711*^9, 3.619480010986821*^9}, {
  3.619910494759737*^9, 3.619910495570051*^9}}],

Cell[TextData[{
 StyleBox["Parameter Definitions", "Subsection",
  FontColor->RGBColor[1, 0.5, 0]],
 StyleBox["\nl = Pendulum length\ng = acceleration\ntmax = maximum time\npc = \
critical phase at which pendulum begins to rotate about axis",
  FontColor->RGBColor[1, 0.5, 0]]
}], "Text",
 CellChangeTimes->{{3.620003833214614*^9, 3.620003836421105*^9}, {
  3.6200039796464033`*^9, 3.6200040621838284`*^9}, {3.620004128600409*^9, 
  3.620004159276442*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"l", " ", "=", " ", "1"}], ";", " ", 
  RowBox[{"tmax", " ", "=", " ", "20"}], ";", " ", 
  RowBox[{"g", " ", "=", " ", "9.8"}], ";", " ", 
  RowBox[{"w", " ", "=", " ", 
   RowBox[{"l", "/", "g"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"pc", " ", ":=", " ", 
  RowBox[{"Sqrt", "[", 
   RowBox[{"4", " ", 
    RowBox[{"g", "/", " ", "l"}]}], "]"}]}]}], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.6196414877487698`*^9, 3.619641488631404*^9}, {
  3.619910799322654*^9, 3.619910799629002*^9}, {3.619911623143305*^9, 
  3.619911623328664*^9}, {3.619997250090176*^9, 3.6199972569936867`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"Single2DPendulum", "[", "pDot0_", "]"}], " ", ":=", "   ", 
  RowBox[{"NDSolve", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Sin", "[", 
         RowBox[{"p", "[", "t", "]"}], "]"}], "+", " ", 
        RowBox[{"w", " ", 
         RowBox[{
          RowBox[{"p", "''"}], "[", "t", "]"}]}]}], "\[Equal]", "0"}], ",", 
      " ", 
      RowBox[{
       RowBox[{"p", "[", "0", "]"}], "\[Equal]", "0"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"p", "'"}], "[", "0", "]"}], "\[Equal]", " ", "pDot0"}]}], 
     "}"}], ",", " ", "p", ",", " ", 
    RowBox[{"{", 
     RowBox[{"t", ",", " ", "0", ",", " ", "tmax"}], "}"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.619640941045309*^9, {3.619641144784231*^9, 3.6196411537691307`*^9}, {
   3.6196423092159767`*^9, 3.619642316652919*^9}, {3.619642889688748*^9, 
   3.61964289713448*^9}, 3.6196591895397587`*^9, {3.6196592285809917`*^9, 
   3.61965922903024*^9}, 3.619659743699094*^9, 3.61965978227108*^9, {
   3.619705238886386*^9, 3.619705241712944*^9}, 3.619705296537713*^9, {
   3.619729209003339*^9, 3.619729214619698*^9}, {3.619910499381485*^9, 
   3.619910499978346*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"PhasePlot2DPendulum", "[", 
   RowBox[{"p0_", ",", " ", "p1_", ",", " ", "dp_", ",", " ", 
    RowBox[{"slider_:", "0"}], ",", " ", 
    RowBox[{"pmax_:", " ", "Pi"}]}], "]"}], " ", ":=", "\[IndentingNewLine]", 
  "  ", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"sol", " ", "=", " ", 
        RowBox[{"Single2DPendulum", "[", "pDot0", "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{
          RowBox[{"p", "[", "t", "]"}], " ", "/.", " ", "sol"}], "]"}], ",", 
        " ", 
        RowBox[{"{", 
         RowBox[{"t", ",", " ", "0", ",", " ", "tmax"}], "}"}], ",", " ", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "tmax"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "pmax"}], ",", " ", "pmax"}], "}"}]}], "}"}]}]}], 
       "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "pDot0", ",", " ", "slider", ",", " ", 
        "\"\<Initial Anguler Velocity\>\""}], "}"}], ",", "p0", ",", " ", 
      "p1", ",", " ", "dp"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.619915970671986*^9, 3.619916013237672*^9}, {
   3.619916239372901*^9, 3.619916258962906*^9}, {3.6199163130582113`*^9, 
   3.6199163418347187`*^9}, {3.619916749389112*^9, 3.619916756165244*^9}, {
   3.6199168574510317`*^9, 3.6199169132100267`*^9}, {3.619917137314299*^9, 
   3.619917137674115*^9}, 3.619917542425015*^9, {3.619917573345335*^9, 
   3.619917605927153*^9}, {3.619917650240687*^9, 3.619917658670538*^9}, 
   3.619918086511784*^9, {3.619918410930397*^9, 3.619918448947494*^9}, {
   3.619996839699444*^9, 3.619996861305462*^9}, {3.619996937451768*^9, 
   3.6199969517304173`*^9}, {3.619997105202599*^9, 3.619997162916349*^9}, {
   3.6199973439205017`*^9, 3.619997344446619*^9}, {3.619997442425242*^9, 
   3.619997446822864*^9}, {3.619997576595992*^9, 3.619997606621099*^9}, {
   3.6199984206744843`*^9, 3.6199985164246597`*^9}, {3.619998919819037*^9, 
   3.619998931351884*^9}, {3.62000295394105*^9, 3.6200029827627487`*^9}, {
   3.62000344098449*^9, 3.620003452920347*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"ConfigurationSpace2DPendulum", "[", 
   RowBox[{"p0_", ",", " ", "p1_", ",", " ", "dp_", ",", " ", 
    RowBox[{"slider_:", "0"}]}], "]"}], " ", ":=", "\[IndentingNewLine]", 
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"sol", " ", "=", " ", 
        RowBox[{"Single2DPendulum", "[", "pDot0", "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"path", " ", "=", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"l", " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"p", "[", "t", "]"}], "]"}]}], ",", " ", 
           RowBox[{
            RowBox[{"-", "l"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{"p", "[", "t", "]"}], "]"}]}]}], "}"}], " ", "/.", " ", 
         "sol"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"ParametricPlot", "[", 
        RowBox[{
         RowBox[{"Evaluate", "[", "path", "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", " ", "0", ",", " ", "tmax"}], "}"}], ",", " ", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", " ", "l"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "l"}], ",", " ", "l"}], "}"}]}], "}"}]}]}], 
        "]"}]}]}], "]"}], ",", "\[IndentingNewLine]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "pDot0", ",", " ", "slider", ",", " ", 
        "\"\<Initial Angual Velocity\>\""}], "}"}], ",", "p0", ",", " ", "p1",
       ",", " ", "dp"}], "}"}]}], "]"}], " "}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.619997317153533*^9, 3.6199973363685827`*^9}, {
  3.61999742615172*^9, 3.619997437607915*^9}, {3.619997528318499*^9, 
  3.619997569333785*^9}, {3.619997617388606*^9, 3.6199976262271633`*^9}, {
  3.619997714924028*^9, 3.619997716818584*^9}, {3.619997793505966*^9, 
  3.619997796264106*^9}, {3.619998463253647*^9, 3.6199984915540524`*^9}, {
  3.6199985254282207`*^9, 3.619998527578676*^9}, {3.620003417590653*^9, 
  3.6200034195517893`*^9}}],

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot2DPendulum", "[", 
    RowBox[{"p0_", ",", " ", "p1_", ",", " ", "dp_", ",", " ", 
     RowBox[{"slider_:", "0"}]}], "]"}], " ", ":=", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"sol", " ", "=", " ", 
          RowBox[{"Single2DPendulum", "[", "pDot0", "]"}]}], ",", " ", 
         RowBox[{"u", " ", "=", " ", "u0"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"pu", " ", "=", "  ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", "u", "]"}], " ", "/.", " ", "sol"}], ")"}], "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"ListPlot", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0", ",", " ", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"l", " ", 
               RowBox[{"Sin", "[", "pu", "]"}]}], ",", " ", 
              RowBox[{
               RowBox[{"-", "l"}], " ", 
               RowBox[{"Cos", "[", "pu", "]"}]}]}], "}"}]}], "}"}], ",", " ", 
          
          RowBox[{"PlotRange", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "l"}], "-", ".1"}], ",", " ", 
               RowBox[{"l", "+", ".1"}]}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "l"}], "-", ".1"}], ",", " ", 
               RowBox[{"l", "+", ".1"}]}], "}"}]}], "}"}]}], ",", " ", 
          "\[IndentingNewLine]", 
          RowBox[{"AspectRatio", "\[Rule]", "1"}], ",", " ", 
          RowBox[{"Joined", "\[Rule]", "True"}], ",", " ", 
          RowBox[{"Mesh", "\[Rule]", "All"}], ",", " ", 
          RowBox[{"PlotMarkers", "\[Rule]", 
           RowBox[{"Style", "[", 
            RowBox[{"\"\<\[FilledCircle]\>\"", ",", " ", "28"}], "]"}]}], ",",
           " ", 
          RowBox[{"PlotStyle", "\[Rule]", "Red"}]}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"u0", ",", " ", "0", ",", " ", "\"\<Time\>\""}], "}"}], ",", 
       " ", "0", ",", " ", "tmax", ",", " ", "0.001"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
        "pDot0", ",", " ", "slider", ",", " ", 
         "\"\<Initial Angual Velocity\>\""}], "}"}], ",", "p0", ",", " ", 
       "p1", ",", " ", "dp"}], "}"}]}], "]"}], " "}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.619997877973668*^9, {3.619998033279546*^9, 3.6199980821203747`*^9}, {
   3.619998538827228*^9, 3.619998548688766*^9}, {3.620002222123261*^9, 
   3.620002227129575*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Solution Up To Critical Angular Frequency", \
"Subsection",
 FontColor->RGBColor[1, 0.5, 0]]], "Section",
 CellChangeTimes->{3.619644035509274*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PhasePlot2DPendulum", "[", 
  RowBox[{"0", ",", " ", 
   RowBox[{"pc", " ", "-", " ", "0.000001"}], ",", " ", "0.001"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.6199969765739594`*^9, 3.61999701693078*^9}, {
   3.6199970541437798`*^9, 3.619997056496176*^9}, {3.6199973483020983`*^9, 
   3.6199973488378773`*^9}, 3.619997454353538*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pDot0$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pDot0$$], 0, "Initial Anguler Velocity"}, 0, 
      6.260989336999411, 0.001}}, Typeset`size$$ = {360., {105., 109.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`pDot0$4989$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`pDot0$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pDot0$$, $CellContext`pDot0$4989$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol$ = \
$CellContext`Single2DPendulum[$CellContext`pDot0$$]}, 
        Plot[
         Evaluate[
          ReplaceAll[
           $CellContext`p[$CellContext`t], $CellContext`sol$]], \
{$CellContext`t, 0, $CellContext`tmax}, 
         PlotRange -> {{0, $CellContext`tmax}, {-Pi, Pi}}]], 
      "Specifications" :> {{{$CellContext`pDot0$$, 0, 
          "Initial Anguler Velocity"}, 0, 6.260989336999411, 0.001}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {149., 154.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.619997057503673*^9, 3.6199971685753193`*^9, 
  3.619997349724917*^9, 3.619997455235283*^9, 3.619998567709835*^9, 
  3.6199988768898983`*^9, 3.620003465636854*^9, 3.620091553339944*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ConfigurationSpace2DPendulum", "[", 
  RowBox[{"0", ",", " ", 
   RowBox[{"pc", " ", "-", " ", ".0001"}], ",", " ", ".01"}], "]"}]], "Input",\

 CellChangeTimes->{{3.619997780331316*^9, 3.619997814599845*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pDot0$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pDot0$$], 0, "Initial Angual Velocity"}, 0, 
      6.260890336999411, 0.01}}, Typeset`size$$ = {360., {176., 180.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`pDot0$5058$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`pDot0$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pDot0$$, $CellContext`pDot0$5058$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol = \
$CellContext`Single2DPendulum[$CellContext`pDot0$$]}, $CellContext`path = 
         ReplaceAll[{$CellContext`l Sin[
              $CellContext`p[$CellContext`t]], (-$CellContext`l) Cos[
              $CellContext`p[$CellContext`t]]}, $CellContext`sol]; 
        ParametricPlot[
          Evaluate[$CellContext`path], {$CellContext`t, 0, $CellContext`tmax},
           PlotRange -> {{-1, $CellContext`l}, {-$CellContext`l, \
$CellContext`l}}]], 
      "Specifications" :> {{{$CellContext`pDot0$$, 0, 
          "Initial Angual Velocity"}, 0, 6.260890336999411, 0.01}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {220., 225.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.619997815637566*^9, 3.619998574043621*^9, 
  3.619998877148615*^9, 3.620091553662299*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"Plot2DPendulum", "[", 
   RowBox[{"0", ",", " ", 
    RowBox[{"pc", " ", "-", " ", ".0001"}], ",", " ", ".01"}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.6199981878848124`*^9, 3.6199982079777603`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pDot0$$ = 0, $CellContext`u0$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`u0$$], 0, "Time"}, 0, 20, 0.001}, {{
       Hold[$CellContext`pDot0$$], 0, "Initial Angual Velocity"}, 0, 
      6.260890336999411, 0.01}}, Typeset`size$$ = {360., {178., 182.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`u0$5118$$ = 0, $CellContext`pDot0$5119$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pDot0$$ = 0, $CellContext`u0$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`u0$$, $CellContext`u0$5118$$, 0], 
        Hold[$CellContext`pDot0$$, $CellContext`pDot0$5119$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol = \
$CellContext`Single2DPendulum[$CellContext`pDot0$$], $CellContext`u = \
$CellContext`u0$$}, $CellContext`pu = Part[
           ReplaceAll[
            $CellContext`p[$CellContext`u], $CellContext`sol], 1]; 
        ListPlot[{{0, 
           0}, {$CellContext`l Sin[$CellContext`pu], (-$CellContext`l) 
            Cos[$CellContext`pu]}}, 
          PlotRange -> {{-$CellContext`l - 0.1, $CellContext`l + 
             0.1}, {-$CellContext`l - 0.1, $CellContext`l + 0.1}}, 
          AspectRatio -> 1, Joined -> True, Mesh -> All, PlotMarkers -> 
          Style["\[FilledCircle]", 28], PlotStyle -> Red]], 
      "Specifications" :> {{{$CellContext`u0$$, 0, "Time"}, 0, 20, 
         0.001}, {{$CellContext`pDot0$$, 0, "Initial Angual Velocity"}, 0, 
         6.260890336999411, 0.01}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {236., 241.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.619998208739757*^9, {3.619998592017695*^9, 3.619998601964258*^9}, 
   3.619998877255867*^9, 3.620091553755431*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Solution Around Critical Angular Frequency", \
"Subsection",
 FontColor->RGBColor[1, 0.5, 0]]], "Section",
 CellChangeTimes->{
  3.619643982095726*^9, {3.619644040570985*^9, 3.619644045808666*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PhasePlot2DPendulum", "[", 
  RowBox[{
   RowBox[{"pc", " ", "-", " ", ".0001"}], ",", " ", 
   RowBox[{"pc", " ", "+", " ", ".0001"}], ",", " ", ".000001", ",", " ", 
   "pc", ",", " ", 
   RowBox[{"5", " ", "Pi"}]}], "]"}]], "Input",
 CellChangeTimes->{
  3.6199983356418533`*^9, {3.619998627613023*^9, 3.619998630394129*^9}, {
   3.620003575455504*^9, 3.620003594141041*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pDot0$$ = 6.260990336999411, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pDot0$$], 6.260990336999411, 
       "Initial Anguler Velocity"}, 6.260890336999411, 6.261090336999411, 
      1.*^-6}}, Typeset`size$$ = {360., {103., 108.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`pDot0$5179$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pDot0$$ = 6.260990336999411}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pDot0$$, $CellContext`pDot0$5179$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol$ = \
$CellContext`Single2DPendulum[$CellContext`pDot0$$]}, 
        Plot[
         Evaluate[
          ReplaceAll[
           $CellContext`p[$CellContext`t], $CellContext`sol$]], \
{$CellContext`t, 0, $CellContext`tmax}, 
         PlotRange -> {{0, $CellContext`tmax}, {-(5 Pi), 5 Pi}}]], 
      "Specifications" :> {{{$CellContext`pDot0$$, 6.260990336999411, 
          "Initial Anguler Velocity"}, 6.260890336999411, 6.261090336999411, 
         1.*^-6}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {147., 152.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.619998336738874*^9, 3.6199986317379*^9, 3.619998768065975*^9, 
   3.619998877421776*^9, {3.620003580888939*^9, 3.620003594716489*^9}, 
   3.6200915539349337`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot2DPendulum", "[", 
  RowBox[{
   RowBox[{"pc", " ", "-", " ", ".0001"}], ",", " ", 
   RowBox[{"pc", " ", "+", " ", ".0001"}], ",", " ", ".000001", ",", " ", 
   "pc"}], "]"}]], "Input",
 CellChangeTimes->{{3.619998799067379*^9, 3.619998801544186*^9}, {
  3.620002235841539*^9, 3.6200022363754253`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pDot0$$ = 
    6.260990336999411, $CellContext`u0$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`u0$$], 0, "Time"}, 0, 20, 0.001}, {{
       Hold[$CellContext`pDot0$$], 6.260990336999411, 
       "Initial Angual Velocity"}, 6.260890336999411, 6.261090336999411, 
      1.*^-6}}, Typeset`size$$ = {360., {178., 182.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`u0$5237$$ = 0, $CellContext`pDot0$5238$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pDot0$$ = 
        6.260990336999411, $CellContext`u0$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`u0$$, $CellContext`u0$5237$$, 0], 
        Hold[$CellContext`pDot0$$, $CellContext`pDot0$5238$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`sol = \
$CellContext`Single2DPendulum[$CellContext`pDot0$$], $CellContext`u = \
$CellContext`u0$$}, $CellContext`pu = Part[
           ReplaceAll[
            $CellContext`p[$CellContext`u], $CellContext`sol], 1]; 
        ListPlot[{{0, 
           0}, {$CellContext`l Sin[$CellContext`pu], (-$CellContext`l) 
            Cos[$CellContext`pu]}}, 
          PlotRange -> {{-$CellContext`l - 0.1, $CellContext`l + 
             0.1}, {-$CellContext`l - 0.1, $CellContext`l + 0.1}}, 
          AspectRatio -> 1, Joined -> True, Mesh -> All, PlotMarkers -> 
          Style["\[FilledCircle]", 28], PlotStyle -> Red]], 
      "Specifications" :> {{{$CellContext`u0$$, 0, "Time"}, 0, 20, 
         0.001}, {{$CellContext`pDot0$$, 6.260990336999411, 
          "Initial Angual Velocity"}, 6.260890336999411, 6.261090336999411, 
         1.*^-6}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{405., {236., 241.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.619998802841961*^9, 3.619998877453071*^9, 
  3.620002262974834*^9, 3.6200915539702253`*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1316, 1188},
WindowMargins->{{Automatic, -2392}, {Automatic, 6}},
FrontEndVersion->"10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (June 27, \
2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 203, 3, 92, "Title"],
Cell[1692, 40, 456, 9, 114, "Text"],
Cell[2151, 51, 641, 14, 46, "Input",
 InitializationCell->True],
Cell[2795, 67, 1257, 32, 28, "Input",
 InitializationCell->True],
Cell[4055, 101, 2424, 53, 97, "Input",
 InitializationCell->True],
Cell[6482, 156, 2266, 55, 114, "Input",
 InitializationCell->True],
Cell[8751, 213, 3024, 77, 165, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[11800, 294, 171, 3, 55, "Section"],
Cell[CellGroupData[{
Cell[11996, 301, 359, 7, 28, "Input"],
Cell[12358, 310, 2093, 43, 320, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14488, 358, 233, 5, 28, "Input"],
Cell[14724, 365, 2159, 43, 462, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16920, 413, 263, 6, 46, "Input"],
Cell[17186, 421, 2603, 50, 494, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[19838, 477, 221, 4, 55, "Section"],
Cell[CellGroupData[{
Cell[20084, 485, 402, 9, 28, "Input"],
Cell[20489, 496, 2196, 46, 316, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[22722, 547, 331, 7, 28, "Input"],
Cell[23056, 556, 2703, 52, 494, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature jxDJ19pr3t1huDwohYxf3466 *)
