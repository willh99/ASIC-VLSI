######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s372_1 on Wed Apr 25 15:58:15 2018

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
DefRow: ROW_2 core 31.2000 90.0000 FS 101 1 2.4000 0.0000
DefRow: ROW_1 core 31.2000 60.0000 N 101 1 2.4000 0.0000
DefRow: ROW_0 core 31.2000 30.0000 FS 101 1 2.4000 0.0000

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
PhysicalInstance: FILLER_1 FILL MX 76.8000 30.0000
PhysicalInstance: FILLER_2 FILL MX 79.2000 30.0000
PhysicalInstance: FILLER_3 FILL MX 206.4000 30.0000
PhysicalInstance: FILLER_4 FILL MX 208.8000 30.0000
PhysicalInstance: FILLER_5 FILL R0 271.2000 60.0000
PhysicalInstance: FILLER_6 FILL MX 52.8000 90.0000
PhysicalInstance: FILLER_7 FILL MX 55.2000 90.0000
PhysicalInstance: FILLER_8 FILL MX 57.6000 90.0000
PhysicalInstance: FILLER_9 FILL MX 60.0000 90.0000
PhysicalInstance: FILLER_10 FILL MX 67.2000 90.0000
PhysicalInstance: FILLER_11 FILL MX 69.6000 90.0000
PhysicalInstance: FILLER_12 FILL MX 72.0000 90.0000
PhysicalInstance: FILLER_13 FILL MX 74.4000 90.0000
PhysicalInstance: FILLER_14 FILL MX 76.8000 90.0000
PhysicalInstance: FILLER_15 FILL MX 84.0000 90.0000
PhysicalInstance: FILLER_16 FILL MX 86.4000 90.0000
PhysicalInstance: FILLER_17 FILL MX 88.8000 90.0000
PhysicalInstance: FILLER_18 FILL MX 91.2000 90.0000
PhysicalInstance: FILLER_19 FILL MX 93.6000 90.0000
PhysicalInstance: FILLER_20 FILL MX 96.0000 90.0000
PhysicalInstance: FILLER_21 FILL MX 98.4000 90.0000
PhysicalInstance: FILLER_22 FILL MX 100.8000 90.0000
PhysicalInstance: FILLER_23 FILL MX 103.2000 90.0000
PhysicalInstance: FILLER_24 FILL MX 105.6000 90.0000
PhysicalInstance: FILLER_25 FILL MX 108.0000 90.0000
PhysicalInstance: FILLER_26 FILL MX 110.4000 90.0000
PhysicalInstance: FILLER_27 FILL MX 112.8000 90.0000
PhysicalInstance: FILLER_28 FILL MX 115.2000 90.0000
PhysicalInstance: FILLER_29 FILL MX 117.6000 90.0000
PhysicalInstance: FILLER_30 FILL MX 120.0000 90.0000
PhysicalInstance: FILLER_31 FILL MX 122.4000 90.0000
PhysicalInstance: FILLER_32 FILL MX 124.8000 90.0000
PhysicalInstance: FILLER_33 FILL MX 127.2000 90.0000
PhysicalInstance: FILLER_34 FILL MX 129.6000 90.0000
PhysicalInstance: FILLER_35 FILL MX 132.0000 90.0000
PhysicalInstance: FILLER_36 FILL MX 134.4000 90.0000
PhysicalInstance: FILLER_37 FILL MX 136.8000 90.0000
PhysicalInstance: FILLER_38 FILL MX 139.2000 90.0000
PhysicalInstance: FILLER_39 FILL MX 141.6000 90.0000
PhysicalInstance: FILLER_40 FILL MX 144.0000 90.0000
PhysicalInstance: FILLER_41 FILL MX 146.4000 90.0000
PhysicalInstance: FILLER_42 FILL MX 148.8000 90.0000
PhysicalInstance: FILLER_43 FILL MX 151.2000 90.0000
PhysicalInstance: FILLER_44 FILL MX 153.6000 90.0000
PhysicalInstance: FILLER_45 FILL MX 156.0000 90.0000
PhysicalInstance: FILLER_46 FILL MX 158.4000 90.0000
PhysicalInstance: FILLER_47 FILL MX 160.8000 90.0000
PhysicalInstance: FILLER_48 FILL MX 163.2000 90.0000
PhysicalInstance: FILLER_49 FILL MX 165.6000 90.0000
PhysicalInstance: FILLER_50 FILL MX 168.0000 90.0000
PhysicalInstance: FILLER_51 FILL MX 170.4000 90.0000
PhysicalInstance: FILLER_52 FILL MX 172.8000 90.0000
PhysicalInstance: FILLER_53 FILL MX 175.2000 90.0000
PhysicalInstance: FILLER_54 FILL MX 177.6000 90.0000
PhysicalInstance: FILLER_55 FILL MX 180.0000 90.0000
PhysicalInstance: FILLER_56 FILL MX 182.4000 90.0000
PhysicalInstance: FILLER_57 FILL MX 184.8000 90.0000
PhysicalInstance: FILLER_58 FILL MX 187.2000 90.0000
PhysicalInstance: FILLER_59 FILL MX 189.6000 90.0000
PhysicalInstance: FILLER_60 FILL MX 192.0000 90.0000
PhysicalInstance: FILLER_61 FILL MX 194.4000 90.0000
PhysicalInstance: FILLER_62 FILL MX 196.8000 90.0000
PhysicalInstance: FILLER_63 FILL MX 199.2000 90.0000
PhysicalInstance: FILLER_64 FILL MX 201.6000 90.0000
PhysicalInstance: FILLER_65 FILL MX 204.0000 90.0000
PhysicalInstance: FILLER_66 FILL MX 206.4000 90.0000
PhysicalInstance: FILLER_67 FILL MX 208.8000 90.0000
PhysicalInstance: FILLER_68 FILL MX 211.2000 90.0000
PhysicalInstance: FILLER_69 FILL MX 213.6000 90.0000
PhysicalInstance: FILLER_70 FILL MX 216.0000 90.0000
PhysicalInstance: FILLER_71 FILL MX 218.4000 90.0000
PhysicalInstance: FILLER_72 FILL MX 220.8000 90.0000
PhysicalInstance: FILLER_73 FILL MX 223.2000 90.0000
PhysicalInstance: FILLER_74 FILL MX 225.6000 90.0000
PhysicalInstance: FILLER_75 FILL MX 228.0000 90.0000
PhysicalInstance: FILLER_76 FILL MX 230.4000 90.0000
PhysicalInstance: FILLER_77 FILL MX 232.8000 90.0000
PhysicalInstance: FILLER_78 FILL MX 235.2000 90.0000
PhysicalInstance: FILLER_79 FILL MX 237.6000 90.0000
PhysicalInstance: FILLER_80 FILL MX 240.0000 90.0000
PhysicalInstance: FILLER_81 FILL MX 242.4000 90.0000
PhysicalInstance: FILLER_82 FILL MX 244.8000 90.0000
PhysicalInstance: FILLER_83 FILL MX 252.0000 90.0000
PhysicalInstance: FILLER_84 FILL MX 254.4000 90.0000
PhysicalInstance: FILLER_85 FILL MX 256.8000 90.0000
PhysicalInstance: FILLER_86 FILL MX 259.2000 90.0000
PhysicalInstance: FILLER_87 FILL MX 261.6000 90.0000
PhysicalInstance: FILLER_88 FILL MX 268.8000 90.0000
PhysicalInstance: FILLER_89 FILL MX 271.2000 90.0000

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
IOPin: sum[3] 219.6000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 219.1500 0.0000 220.0500 0.9000 -lyr 2
IOPin: sum[2] 188.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 187.9500 0.0000 188.8500 0.9000 -lyr 2
IOPin: sum[1] 133.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 132.7500 0.0000 133.6500 0.9000 -lyr 2
IOPin: sum[0] 0.0000 115.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 114.7500 1.5000 116.2500 -lyr 3
IOPin: cout 272.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 271.9500 0.0000 272.8500 0.9000 -lyr 2
IOPin: a[3] 304.5000 70.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 303.0000 69.7500 304.5000 71.2500 -lyr 3
IOPin: a[2] 304.5000 109.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 303.0000 108.7500 304.5000 110.2500 -lyr 3
IOPin: a[1] 92.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 91.9500 0.0000 92.8500 0.9000 -lyr 2
IOPin: a[0] 56.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 55.9500 0.0000 56.8500 0.9000 -lyr 2
IOPin: b[3] 265.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 264.7500 0.0000 265.6500 0.9000 -lyr 2
IOPin: b[2] 304.5000 76.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 303.0000 75.7500 304.5000 77.2500 -lyr 3
IOPin: b[1] 63.6000 150.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 63.1500 149.1000 64.0500 150.0000 -lyr 2
IOPin: b[0] 61.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 60.7500 0.0000 61.6500 0.9000 -lyr 2
IOPin: cin 0.0000 70.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 69.7500 1.5000 71.2500 -lyr 3
IOPin: clk 128.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 127.9500 0.0000 128.8500 0.9000 -lyr 2
IOPin: rst 109.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 108.7500 0.0000 109.6500 0.9000 -lyr 2
IOPin: test_si 82.8000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 82.3500 0.0000 83.2500 0.9000 -lyr 2
IOPin: test_so 214.8000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 214.3500 0.0000 215.2500 0.9000 -lyr 2
IOPin: test_se 121.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 120.7500 0.0000 121.6500 0.9000 -lyr 2

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
      <Pref x=219.6000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=219.1500 lly=0.0000 urx=220.0500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[2]" status="placed" >
    <Port>
      <Pref x=188.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=187.9500 lly=0.0000 urx=188.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[1]" status="placed" >
    <Port>
      <Pref x=133.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=132.7500 lly=0.0000 urx=133.6500 ury=0.9000 />
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
      <Pref x=272.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=271.9500 lly=0.0000 urx=272.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[3]" status="placed" >
    <Port>
      <Pref x=304.5000 y=70.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=303.0000 lly=69.7500 urx=304.5000 ury=71.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[2]" status="placed" >
    <Port>
      <Pref x=304.5000 y=109.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=303.0000 lly=108.7500 urx=304.5000 ury=110.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[1]" status="placed" >
    <Port>
      <Pref x=92.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=91.9500 lly=0.0000 urx=92.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[0]" status="placed" >
    <Port>
      <Pref x=56.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=55.9500 lly=0.0000 urx=56.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[3]" status="placed" >
    <Port>
      <Pref x=265.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=264.7500 lly=0.0000 urx=265.6500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[2]" status="placed" >
    <Port>
      <Pref x=304.5000 y=76.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=303.0000 lly=75.7500 urx=304.5000 ury=77.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[1]" status="placed" >
    <Port>
      <Pref x=63.6000 y=150.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=63.1500 lly=149.1000 urx=64.0500 ury=150.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[0]" status="placed" >
    <Port>
      <Pref x=61.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=60.7500 lly=0.0000 urx=61.6500 ury=0.9000 />
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
      <Pref x=128.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=127.9500 lly=0.0000 urx=128.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="rst" status="placed" >
    <Port>
      <Pref x=109.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=108.7500 lly=0.0000 urx=109.6500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_si" status="placed" >
    <Port>
      <Pref x=82.8000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=82.3500 lly=0.0000 urx=83.2500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_so" status="placed" >
    <Port>
      <Pref x=214.8000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=214.3500 lly=0.0000 urx=215.2500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_se" status="placed" >
    <Port>
      <Pref x=121.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=120.7500 lly=0.0000 urx=121.6500 ury=0.9000 />
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
