######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s372_1 on Sat Apr 28 18:04:42 2018

Version: 8

Head Box: 0.0000 0.0000 193.2000 180.0000
IO Box: 0.0000 0.0000 193.2000 180.0000
Core Box: 31.2000 30.0000 163.2000 150.0000
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
DefRow: ROW_0 core 31.2000 30.0000 FS 55 1 2.4000 0.0000
DefRow: ROW_1 core 31.2000 60.0000 N 55 1 2.4000 0.0000
DefRow: ROW_2 core 31.2000 90.0000 FS 55 1 2.4000 0.0000
DefRow: ROW_3 core 31.2000 120.0000 N 55 1 2.4000 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: X 1.2000 80 2.4000 1 3
Track: Y 1.5000 60 3.0000 1 3
Track: Y 1.5000 60 3.0000 1 2
Track: X 1.2000 80 2.4000 1 2
Track: X 1.2000 80 2.4000 1 1
Track: Y 1.5000 60 3.0000 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: Y 180.1500 1 23.7000
GCellGrid: Y 78.4500 3 39.0000
GCellGrid: Y -0.1500 2 39.6000
GCellGrid: X 193.3500 1 37.2000
GCellGrid: X 78.1500 3 39.0000
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
Block: c0_reg_reg R0 98.4000 90.0000 00
Block: c1_reg_reg R0 103.2000 90.0000 00
Block: c2_reg_reg R0 108.0000 90.0000 00

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
IOPin: sum[3] 193.2000 115.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 191.7000 114.7500 193.2000 116.2500 -lyr 3
IOPin: sum[2] 109.2000 180.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 108.7500 179.1000 109.6500 180.0000 -lyr 2
IOPin: sum[1] 0.0000 124.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 123.7500 1.5000 125.2500 -lyr 3
IOPin: sum[0] 0.0000 115.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 114.7500 1.5000 116.2500 -lyr 3
IOPin: cout 193.2000 133.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 191.7000 132.7500 193.2000 134.2500 -lyr 3
IOPin: a[3] 157.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 156.7500 0.0000 157.6500 0.9000 -lyr 2
IOPin: a[2] 111.6000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 111.1500 0.0000 112.0500 0.9000 -lyr 2
IOPin: a[1] 0.0000 109.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 108.7500 1.5000 110.2500 -lyr 3
IOPin: a[0] 54.0000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 53.5500 0.0000 54.4500 0.9000 -lyr 2
IOPin: b[3] 162.0000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 161.5500 0.0000 162.4500 0.9000 -lyr 2
IOPin: b[2] 193.2000 109.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 191.7000 108.7500 193.2000 110.2500 -lyr 3
IOPin: b[1] 0.0000 130.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 129.7500 1.5000 131.2500 -lyr 3
IOPin: b[0] 75.6000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 75.1500 0.0000 76.0500 0.9000 -lyr 2
IOPin: cin 49.2000 180.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 48.7500 179.1000 49.6500 180.0000 -lyr 2
IOPin: clk 104.4000 180.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 103.9500 179.1000 104.8500 180.0000 -lyr 2
IOPin: rst 80.4000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 79.9500 0.0000 80.8500 0.9000 -lyr 2
IOPin: test_si 99.6000 180.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 99.1500 179.1000 100.0500 180.0000 -lyr 2
IOPin: test_so 193.2000 103.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 191.7000 102.7500 193.2000 104.2500 -lyr 3
IOPin: test_se 193.2000 91.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 191.7000 90.7500 193.2000 92.2500 -lyr 3

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
      <Pref x=193.2000 y=115.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=191.7000 lly=114.7500 urx=193.2000 ury=116.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[2]" status="placed" >
    <Port>
      <Pref x=109.2000 y=180.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=108.7500 lly=179.1000 urx=109.6500 ury=180.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="sum[1]" status="placed" >
    <Port>
      <Pref x=0.0000 y=124.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=123.7500 urx=1.5000 ury=125.2500 />
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
      <Pref x=193.2000 y=133.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=191.7000 lly=132.7500 urx=193.2000 ury=134.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[3]" status="placed" >
    <Port>
      <Pref x=157.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=156.7500 lly=0.0000 urx=157.6500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[2]" status="placed" >
    <Port>
      <Pref x=111.6000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=111.1500 lly=0.0000 urx=112.0500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[1]" status="placed" >
    <Port>
      <Pref x=0.0000 y=109.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=108.7500 urx=1.5000 ury=110.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="a[0]" status="placed" >
    <Port>
      <Pref x=54.0000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=53.5500 lly=0.0000 urx=54.4500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[3]" status="placed" >
    <Port>
      <Pref x=162.0000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=161.5500 lly=0.0000 urx=162.4500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[2]" status="placed" >
    <Port>
      <Pref x=193.2000 y=109.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=191.7000 lly=108.7500 urx=193.2000 ury=110.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[1]" status="placed" >
    <Port>
      <Pref x=0.0000 y=130.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=129.7500 urx=1.5000 ury=131.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="b[0]" status="placed" >
    <Port>
      <Pref x=75.6000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=75.1500 lly=0.0000 urx=76.0500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="cin" status="placed" >
    <Port>
      <Pref x=49.2000 y=180.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=48.7500 lly=179.1000 urx=49.6500 ury=180.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="clk" status="placed" >
    <Port>
      <Pref x=104.4000 y=180.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=103.9500 lly=179.1000 urx=104.8500 ury=180.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="rst" status="placed" >
    <Port>
      <Pref x=80.4000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=79.9500 lly=0.0000 urx=80.8500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_si" status="placed" >
    <Port>
      <Pref x=99.6000 y=180.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=99.1500 lly=179.1000 urx=100.0500 ury=180.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_so" status="placed" >
    <Port>
      <Pref x=193.2000 y=103.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=191.7000 lly=102.7500 urx=193.2000 ury=104.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_se" status="placed" >
    <Port>
      <Pref x=193.2000 y=91.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=191.7000 lly=90.7500 urx=193.2000 ury=92.2500 />
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
