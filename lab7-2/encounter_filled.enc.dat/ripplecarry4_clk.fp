######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s372_1 on Sat Apr 28 18:29:18 2018

Version: 8

Head Box: 0.0000 0.0000 304.5000 150.0000
IO Box: 0.0000 0.0000 304.5000 150.0000
Core Box: 31.2000 30.0000 274.5000 120.0000
UseStdUtil: false

######################################################
#  DesignRoutingHalo: <space> <bottomLayerName> <topLayerName>
######################################################

######################################################
#  Core Rows Parameters:                             #
######################################################
Row Spacing = 0.000000
Row SpacingType = 2
Row Flip = 2
Core Row Site: core 

##############################################################################
#  DefRow: <name> <site> <x> <y> <orient> <num_x> <num_y> <step_x> <step_y>  #
##############################################################################
DefRow: ROW_0 core 31.2000 30.0000 FS 101 1 2.4000 0.0000
DefRow: ROW_1 core 31.2000 60.0000 N 101 1 2.4000 0.0000
DefRow: ROW_2 core 31.2000 90.0000 FS 101 1 2.4000 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: X 1.2000 127 2.4000 1 3
Track: Y 1.5000 50 3.0000 1 3
Track: Y 1.5000 50 3.0000 1 2
Track: X 1.2000 127 2.4000 1 2
Track: X 1.2000 127 2.4000 1 1
Track: Y 1.5000 50 3.0000 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: Y 150.1500 1 32.7000
GCellGrid: Y 78.4500 2 39.0000
GCellGrid: Y -0.1500 2 39.6000
GCellGrid: X 304.6500 1 31.5000
GCellGrid: X 78.1500 6 39.0000
GCellGrid: X -0.1500 2 39.3000

######################################################
#  SpareCell: cellName                               #
#  SpareInst: instName                               #
######################################################

######################################################
#  ScanGroup: groupName startPin stopPin             #
######################################################

######################################################
#  JtagCell:  leafCellName                           #
#  JtagInst:  <instName | HInstName>                 #
######################################################

######################################################################################
#  BlackBox: -cell <cell_name> { -size <x> <y> |  -area <um^2> | \                  #
#            -gatecount <count> <areapergate> <utilization> | \                     #
#            {-gateArea <gateAreaValue> [-macroArea <macroAreaValue>]} } \          #
#            [-minwidth <w> | -minheight <h> | -fixedwidh <w> | -fixedheight <h>] \ #
#            [-aspectratio <ratio>]                                                  #
#            [-boxList <nrConstraintBox>                                             #
#              ConstraintBox: <llx> <lly> <urx> <ury>                                #
#              ... ]                                                                 #
######################################################################################

#########################################################
#  PhysicalNet: <name> [-pwr|-gnd|-tiehi|-tielo]        #
#########################################################
PhysicalNet: vdd -pwr
PhysicalNet: gnd -gnd

#########################################################
#  PhysicalInstance: <name> <cell> <orient> <llx> <lly> #
#########################################################
PhysicalInstance: FILLER_1 FILL MX 31.2000 30.0000
PhysicalInstance: FILLER_2 FILL MX 33.6000 30.0000
PhysicalInstance: FILLER_3 FILL MX 36.0000 30.0000
PhysicalInstance: FILLER_4 FILL MX 38.4000 30.0000
PhysicalInstance: FILLER_5 FILL MX 40.8000 30.0000
PhysicalInstance: FILLER_6 FILL MX 43.2000 30.0000
PhysicalInstance: FILLER_7 FILL MX 129.6000 30.0000
PhysicalInstance: FILLER_8 FILL MX 132.0000 30.0000
PhysicalInstance: FILLER_9 FILL MX 134.4000 30.0000
PhysicalInstance: FILLER_10 FILL MX 136.8000 30.0000
PhysicalInstance: FILLER_11 FILL MX 139.2000 30.0000
PhysicalInstance: FILLER_12 FILL MX 141.6000 30.0000
PhysicalInstance: FILLER_13 FILL MX 144.0000 30.0000
PhysicalInstance: FILLER_14 FILL MX 146.4000 30.0000
PhysicalInstance: FILLER_15 FILL MX 148.8000 30.0000
PhysicalInstance: FILLER_16 FILL MX 199.2000 30.0000
PhysicalInstance: FILLER_17 FILL MX 201.6000 30.0000
PhysicalInstance: FILLER_18 FILL MX 204.0000 30.0000
PhysicalInstance: FILLER_19 FILL MX 206.4000 30.0000
PhysicalInstance: FILLER_20 FILL MX 208.8000 30.0000
PhysicalInstance: FILLER_21 FILL MX 211.2000 30.0000
PhysicalInstance: FILLER_22 FILL MX 213.6000 30.0000
PhysicalInstance: FILLER_23 FILL MX 216.0000 30.0000
PhysicalInstance: FILLER_24 FILL MX 218.4000 30.0000
PhysicalInstance: FILLER_25 FILL MX 220.8000 30.0000
PhysicalInstance: FILLER_26 FILL MX 223.2000 30.0000
PhysicalInstance: FILLER_27 FILL MX 225.6000 30.0000
PhysicalInstance: FILLER_28 FILL MX 228.0000 30.0000
PhysicalInstance: FILLER_29 FILL MX 230.4000 30.0000
PhysicalInstance: FILLER_30 FILL MX 232.8000 30.0000
PhysicalInstance: FILLER_31 FILL MX 235.2000 30.0000
PhysicalInstance: FILLER_32 FILL MX 237.6000 30.0000
PhysicalInstance: FILLER_33 FILL MX 240.0000 30.0000
PhysicalInstance: FILLER_34 FILL R0 31.2000 60.0000
PhysicalInstance: FILLER_35 FILL R0 33.6000 60.0000
PhysicalInstance: FILLER_36 FILL R0 36.0000 60.0000
PhysicalInstance: FILLER_37 FILL R0 38.4000 60.0000
PhysicalInstance: FILLER_38 FILL R0 40.8000 60.0000
PhysicalInstance: FILLER_39 FILL R0 43.2000 60.0000
PhysicalInstance: FILLER_40 FILL R0 115.2000 60.0000
PhysicalInstance: FILLER_41 FILL R0 117.6000 60.0000
PhysicalInstance: FILLER_42 FILL R0 129.6000 60.0000
PhysicalInstance: FILLER_43 FILL R0 132.0000 60.0000
PhysicalInstance: FILLER_44 FILL R0 134.4000 60.0000
PhysicalInstance: FILLER_45 FILL R0 136.8000 60.0000
PhysicalInstance: FILLER_46 FILL R0 139.2000 60.0000
PhysicalInstance: FILLER_47 FILL R0 141.6000 60.0000
PhysicalInstance: FILLER_48 FILL R0 220.8000 60.0000
PhysicalInstance: FILLER_49 FILL R0 223.2000 60.0000
PhysicalInstance: FILLER_50 FILL R0 225.6000 60.0000
PhysicalInstance: FILLER_51 FILL R0 228.0000 60.0000
PhysicalInstance: FILLER_52 FILL R0 230.4000 60.0000
PhysicalInstance: FILLER_53 FILL R0 232.8000 60.0000
PhysicalInstance: FILLER_54 FILL R0 235.2000 60.0000
PhysicalInstance: FILLER_55 FILL R0 237.6000 60.0000
PhysicalInstance: FILLER_56 FILL R0 240.0000 60.0000
PhysicalInstance: FILLER_57 FILL R0 242.4000 60.0000
PhysicalInstance: FILLER_58 FILL MX 31.2000 90.0000
PhysicalInstance: FILLER_59 FILL MX 33.6000 90.0000
PhysicalInstance: FILLER_60 FILL MX 36.0000 90.0000
PhysicalInstance: FILLER_61 FILL MX 38.4000 90.0000
PhysicalInstance: FILLER_62 FILL MX 40.8000 90.0000
PhysicalInstance: FILLER_63 FILL MX 43.2000 90.0000
PhysicalInstance: FILLER_64 FILL MX 62.4000 90.0000
PhysicalInstance: FILLER_65 FILL MX 81.6000 90.0000
PhysicalInstance: FILLER_66 FILL MX 84.0000 90.0000
PhysicalInstance: FILLER_67 FILL MX 86.4000 90.0000
PhysicalInstance: FILLER_68 FILL MX 88.8000 90.0000
PhysicalInstance: FILLER_69 FILL MX 91.2000 90.0000
PhysicalInstance: FILLER_70 FILL MX 93.6000 90.0000
PhysicalInstance: FILLER_71 FILL MX 96.0000 90.0000
PhysicalInstance: FILLER_72 FILL MX 98.4000 90.0000
PhysicalInstance: FILLER_73 FILL MX 100.8000 90.0000
PhysicalInstance: FILLER_74 FILL MX 129.6000 90.0000
PhysicalInstance: FILLER_75 FILL MX 132.0000 90.0000
PhysicalInstance: FILLER_76 FILL MX 134.4000 90.0000
PhysicalInstance: FILLER_77 FILL MX 136.8000 90.0000
PhysicalInstance: FILLER_78 FILL MX 139.2000 90.0000
PhysicalInstance: FILLER_79 FILL MX 141.6000 90.0000
PhysicalInstance: FILLER_80 FILL MX 228.0000 90.0000
PhysicalInstance: FILLER_81 FILL MX 230.4000 90.0000
PhysicalInstance: FILLER_82 FILL MX 232.8000 90.0000
PhysicalInstance: FILLER_83 FILL MX 235.2000 90.0000
PhysicalInstance: FILLER_84 FILL MX 237.6000 90.0000
PhysicalInstance: FILLER_85 FILL MX 240.0000 90.0000
PhysicalInstance: FILLER_86 FILL MX 259.2000 90.0000
PhysicalInstance: FILLER_87 FILL MX 261.6000 90.0000
PhysicalInstance: FILLER_88 FILL MX 264.0000 90.0000
PhysicalInstance: FILLER_89 FILL MX 266.4000 90.0000

#####################################################################
#  Group: <group_name> <nrHinst> [-isPhyHier]                       #
#    <inst_name>                                                    #
#    ...                                                            #
#####################################################################

#####################################################################
#  Fence:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Region: <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  Guide:  <name> <llx> <lly> <urx> <ury> <nrConstraintBox>         #
#    ConstraintBox: <llx> <lly> <urx> <ury>                         #
#    ...                                                            #
#  SoftGuide: <name>                                                #
#    ...                                                            #
#####################################################################

###########################################################################
#  <Constraints>                                                          #
#     <Constraint  type="fence|guide|region|softguide"                    #
#                  readonly=1  name="blk_name">                           #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                               #
#     </Constraint>                                                       #
#  </Constraints>                                                         #
###########################################################################
###########################################################################
#  <HierarchicalPartitions>                                               #
#     <NetGroup name="group_name" nets=val spacing=val isOptOrder=val isAltLayer=val isPffGroup=val > #
#         <Net name="net_name" /> ...                                     #
#     </NetGroup>                                                         #
#     <Partition name="ptn_name"  hinst="name"                            #
#         coreToLeft=fval coreToRight=fval coreToTop=fval coreToBottom=fval   #
#         pinSpacingNorth=val pinSpacingWest=val pinSpacingSouth=val      #
#         pinSpacingEast=val  blockedLayers=xval >       #
#         <TrackHalfPitch Horizontal=val Vertical=val />                  #
#         <SpacingHalo left=10.0 right=11.0 top=11.0 bottom=11.0 />       #
#         <Clone hinst="hinst_name" orient=R0|R90|... />                  #
#         <PinLayer side="N|W|S|E" Metal1=yes Metal2=yes ... />           #
#         <RowSize cellHeight=1.0 railWidth=1.0 />                        #
#         <RoutingHalo sideSize=11.0 bottomLayer=M1 topLayer=M2  />       #
#         <SpacingHalo left=11.0 right=11.0 top=11.0 bottom=11.0 />       #
#     </Partition>                                                        #
#     <CellPinGroup name="group_name" cell="cell_name"                    #
#                       pins=nr spacing=val isOptOrder=1 isAltLayer=1 >   #
#         <GroupFTerm name="term_name" /> ...                             #
#     </CellPinGroup>                                                     #
#     <PartitionPinBlockage layerMap=x llx=1 lly=2 urx=3 ury=4 name="n" />#
#     <PinGuide name="name" boxes=num cell="name" >                       #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 layer=id /> ...         #
#     </PinGuide>                                                         #
#     <CellPtnCut name="name" cuts=Num >                                  #
#        <Box llx=11.0 lly=22.0 urx=33.0 ury=44.0 /> ...                  #
#     </CellPtnCut>                                                       #
#  </HierarchicalPartitions>                                              #
###########################################################################
<HierarchicalPartitions>
    <Partition name="ripplecarry4_clk" hinst="" coreToLeft=0.0000 coreToRight=0.0000 coreToTop=0.0000 coreToBottom=0.0000 pinSpacingNorth=2 pinSpacingWest=2 pinSpacingSouth=2 pinSpacingEast=2 blockedLayers=0x7 >
	<PinLayer side="N" Metal2=yes />
	<PinLayer side="W" Metal3=yes />
	<PinLayer side="S" Metal2=yes />
	<PinLayer side="E" Metal3=yes />
    </Partition>
</HierarchicalPartitions>

######################################################
#  Instance: <name> <orient> <llx> <lly>             #
######################################################

#################################################################
#  Block: <name> <orient> [<llx> <lly>]                         #
#         [<haloLeftMargin>  <haloBottomMargin>                 #
#          <haloRightMargin> <haloTopMargin> <haloFromInstBox>] #
#         [<IsInstDefCovered> <IsInstPreplaced>]                #
#                                                               #
#  Block with INT_MAX loc is for recording the halo block with  #
#  non-prePlaced status                                         #
#################################################################

######################################################
#  BlockLayerObstruct: <name> <layerX> ...           #
######################################################

######################################################
#  FeedthroughBuffer: <instName>                     #
######################################################

#################################################################
#  <PlacementBlockages>                                         #
#     <Blockage name="blk_name" type="hard|soft|partial">       #
#       <Attr density=1.2 inst="inst_name" pushdown=yes />      #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                     #
#     </Blockage>                                               #
#  </PlacementBlockages>                                        #
#################################################################

###########################################################################
#  <RouteBlockages>                                                       #
#     <Blockage name="blk_name" type="User|RouteGuide|PtnCut|WideWire">   #
#       <Attr spacing=1.2 drw=1.2 inst="name" pushdown=yes fills=yes />   #
#       <Layer type="route|cut|masterslice" id=layerNo />                 #
#       <Box llx=1 lly=2 urx=3 ury=4 /> ...                               #
#       <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...  />                       #
#     </Blockage>                                                         #
#  </RouteBlockages>                                                      #
###########################################################################

######################################################
#  PrerouteAsObstruct: <layer_treated_as_obstruct>   #
######################################################
PrerouteAsObstruct: 0x7

######################################################
#  NetWeight: <net_name> <weight (in integer)>       #
######################################################

#################################################################
#  SprFile: <file_name>                                         #
#################################################################
SprFile: ripplecarry4_clk.fp.spr

#########################################################################################
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> \ #
#         [-special] [-clock] [[-spacing <value>] | [-drw <value>]]                     #
#    PinBox: <llx> <lly> <urx> <ury> [-lyr <layerId>] \                                 #
#            [[-spacing <value>] | [-drw <value>]]                                      #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn> [-lyr <layerId>] \                #
#             [[-spacing <value>] | [-drw <value>]]                                     #
#    PinAntenna: <pinName> <ANTENNAPIN*> <value> LAYER <layer>                          #
#########################################################################################
IOPin: sum[3] 250.8000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 250.3500 149.1000 251.2500 150.0000 -lyr 2
IOPin: sum[2] 219.6000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 219.1500 149.1000 220.0500 150.0000 -lyr 2
IOPin: sum[1] 73.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 72.7500 0.0000 73.6500 0.9000 -lyr 2
IOPin: sum[0] 0.0000 115.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 114.7500 1.5000 116.2500 -lyr 3
IOPin: cout 304.5000 73.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 303.0000 72.7500 304.5000 74.2500 -lyr 3
IOPin: a[3] 270.0000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 269.5500 0.0000 270.4500 0.9000 -lyr 2
IOPin: a[2] 202.8000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 202.3500 149.1000 203.2500 150.0000 -lyr 2
IOPin: a[1] 56.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 55.9500 0.0000 56.8500 0.9000 -lyr 2
IOPin: a[0] 121.2000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 120.7500 149.1000 121.6500 150.0000 -lyr 2
IOPin: b[3] 243.6000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 243.1500 0.0000 244.0500 0.9000 -lyr 2
IOPin: b[2] 121.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 120.7500 0.0000 121.6500 0.9000 -lyr 2
IOPin: b[1] 46.8000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 46.3500 0.0000 47.2500 0.9000 -lyr 2
IOPin: b[0] 126.0000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 125.5500 149.1000 126.4500 150.0000 -lyr 2
IOPin: cin 0.0000 70.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 69.7500 1.5000 71.2500 -lyr 3
IOPin: clk 171.6000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 171.1500 149.1000 172.0500 150.0000 -lyr 2
IOPin: rst 111.6000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 111.1500 0.0000 112.0500 0.9000 -lyr 2
IOPin: test_si 162.0000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 161.5500 0.0000 162.4500 0.9000 -lyr 2
IOPin: test_so 229.2000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 228.7500 149.1000 229.6500 150.0000 -lyr 2
IOPin: test_se 150.0000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 149.5500 149.1000 150.4500 150.0000 -lyr 2

##########################################################################
#  <IOPins>                                                              #
#    <Pin name="pin_name" type="clock|power|ground|analog"               #
#         status="covered|fixed|placed" is_special=1 >                   #
#      <Port>                                                            #
#        <Pref x=1 y=2 side="N|S|W|E|U|D" width=w depth=d />             #
#        <Via name="via_name" x=1 y=2 /> ...                             #
#        <Layer id=id spacing=1.2 drw=1.2>                               #
#          <Box llx=1 lly=2 urx=3 ury=4 /> ...                           #
#          <Poly points=nr x0=1 y0=1 x1=2 y2=2 ...           />          #
#        </Layer> ...                                                    #
#      </Port>  ...                                                      #
#    </Pin> ...                                                          #
#  </IOPins>                                                             #
##########################################################################
<IOPins>
  <Pin name="sum[3]" status="placed" >
    <Port>
      <Pref x=250.8000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=250.3500 lly=149.1000 urx=251.2500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[2]" status="placed" >
    <Port>
      <Pref x=219.6000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=219.1500 lly=149.1000 urx=220.0500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[1]" status="placed" >
    <Port>
      <Pref x=73.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=72.7500 lly=0.0000 urx=73.6500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[0]" status="placed" >
    <Port>
      <Pref x=0.0000 y=115.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=114.7500 urx=1.5000 ury=116.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="cout" status="placed" >
    <Port>
      <Pref x=304.5000 y=73.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=303.0000 lly=72.7500 urx=304.5000 ury=74.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[3]" status="placed" >
    <Port>
      <Pref x=270.0000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=269.5500 lly=0.0000 urx=270.4500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[2]" status="placed" >
    <Port>
      <Pref x=202.8000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=202.3500 lly=149.1000 urx=203.2500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[1]" status="placed" >
    <Port>
      <Pref x=56.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=55.9500 lly=0.0000 urx=56.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[0]" status="placed" >
    <Port>
      <Pref x=121.2000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=120.7500 lly=149.1000 urx=121.6500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[3]" status="placed" >
    <Port>
      <Pref x=243.6000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=243.1500 lly=0.0000 urx=244.0500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[2]" status="placed" >
    <Port>
      <Pref x=121.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=120.7500 lly=0.0000 urx=121.6500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[1]" status="placed" >
    <Port>
      <Pref x=46.8000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=46.3500 lly=0.0000 urx=47.2500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[0]" status="placed" >
    <Port>
      <Pref x=126.0000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=125.5500 lly=149.1000 urx=126.4500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="cin" status="placed" >
    <Port>
      <Pref x=0.0000 y=70.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=69.7500 urx=1.5000 ury=71.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="clk" status="placed" >
    <Port>
      <Pref x=171.6000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=171.1500 lly=149.1000 urx=172.0500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="rst" status="placed" >
    <Port>
      <Pref x=111.6000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=111.1500 lly=0.0000 urx=112.0500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_si" status="placed" >
    <Port>
      <Pref x=162.0000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=161.5500 lly=0.0000 urx=162.4500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_so" status="placed" >
    <Port>
      <Pref x=229.2000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=228.7500 lly=149.1000 urx=229.6500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_se" status="placed" >
    <Port>
      <Pref x=150.0000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=149.5500 lly=149.1000 urx=150.4500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
</IOPins>

#####################################################################
#  <Property>                                                       #
#     <obj_type name="inst_name" >                                  #
#       <prop name="name" type=type_name value=val />               #
#       <Attr name="name" type=type_name value=val />               #
#     </obj_type>                                                   #
#  </Property>                                                      #
#  where:                                                           #
#       type is data type: Box, String, Int, PTR, Loc, double, Bits #
#       obj_type are: inst, Design, instTerm, Bump, cell, net       #
#####################################################################
<Properties>
  <Design name="ripplecarry4_clk">
	<prop name="CUT_ROWS" type=Int value=0 />
  </Design>
</Properties>

################################################################################
#  NetProperties: <net_name> [-special] [-def_prop {int|dbl|str} <value>]...   #
################################################################################
