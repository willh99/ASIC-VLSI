######################################################
#                                                    #
#  Cadence Design Systems                            #
#  FirstEncounter Floor Plan Information             #
#                                                    #
######################################################
# Created by First Encounter v08.10-s372_1 on Tue May  1 11:36:56 2018

Version: 8

Head Box: 0.0000 0.0000 817.6500 750.0000
IO Box: 0.0000 0.0000 817.6500 750.0000
Core Box: 31.2000 30.0000 787.6500 720.0000
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
DefRow: ROW_0 core 31.2000 30.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_1 core 31.2000 60.0000 N 315 1 2.4000 0.0000
DefRow: ROW_2 core 31.2000 90.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_3 core 31.2000 120.0000 N 315 1 2.4000 0.0000
DefRow: ROW_4 core 31.2000 150.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_5 core 31.2000 180.0000 N 315 1 2.4000 0.0000
DefRow: ROW_6 core 31.2000 210.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_7 core 31.2000 240.0000 N 315 1 2.4000 0.0000
DefRow: ROW_8 core 31.2000 270.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_9 core 31.2000 300.0000 N 315 1 2.4000 0.0000
DefRow: ROW_10 core 31.2000 330.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_11 core 31.2000 360.0000 N 315 1 2.4000 0.0000
DefRow: ROW_12 core 31.2000 390.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_13 core 31.2000 420.0000 N 315 1 2.4000 0.0000
DefRow: ROW_14 core 31.2000 450.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_15 core 31.2000 480.0000 N 315 1 2.4000 0.0000
DefRow: ROW_16 core 31.2000 510.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_17 core 31.2000 540.0000 N 315 1 2.4000 0.0000
DefRow: ROW_18 core 31.2000 570.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_19 core 31.2000 600.0000 N 315 1 2.4000 0.0000
DefRow: ROW_20 core 31.2000 630.0000 FS 315 1 2.4000 0.0000
DefRow: ROW_21 core 31.2000 660.0000 N 315 1 2.4000 0.0000
DefRow: ROW_22 core 31.2000 690.0000 FS 315 1 2.4000 0.0000

######################################################
#  Track: dir start number space layer_num layer1 ...#
######################################################
Track: X 1.2000 341 2.4000 1 3
Track: Y 1.5000 250 3.0000 1 3
Track: Y 1.5000 250 3.0000 1 2
Track: X 1.2000 341 2.4000 1 2
Track: X 1.2000 341 2.4000 1 1
Track: Y 1.5000 250 3.0000 1 1

######################################################
#  GCellGrid: dir start number space                 #
######################################################
GCellGrid: X 817.2000 2 0.4500
GCellGrid: X 1.2000 35 24.0000
GCellGrid: X 0.0000 2 1.2000
GCellGrid: Y 721.5000 2 28.5000
GCellGrid: Y 1.5000 25 30.0000
GCellGrid: Y 0.0000 2 1.5000

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
    <Partition name="mips" hinst="" coreToLeft=0.0000 coreToRight=0.0000 coreToTop=0.0000 coreToBottom=0.0000 pinSpacingNorth=2 pinSpacingWest=2 pinSpacingSouth=2 pinSpacingEast=2 blockedLayers=0x7 >
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
SprFile: mips.fp.spr

#########################################################################################
#  IOPin: <pinName> <x> <y> <side> <layerId> <width> <depth> {placed|fixed|cover|-} <nrBox> \ #
#         [-special] [-clock] [[-spacing <value>] | [-drw <value>]]                     #
#    PinBox: <llx> <lly> <urx> <ury> [-lyr <layerId>] \                                 #
#            [[-spacing <value>] | [-drw <value>]]                                      #
#    PinPoly: <nrPt> <x1> <y1> <x2> <y2> ...<xn> <yn> [-lyr <layerId>] \                #
#             [[-spacing <value>] | [-drw <value>]]                                     #
#    PinAntenna: <pinName> <ANTENNAPIN*> <value> LAYER <layer>                          #
#########################################################################################
IOPin: clk 402.0000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 401.5500 0.0000 402.4500 0.9000 -lyr 2
IOPin: reset 219.6000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 219.1500 749.1000 220.0500 750.0000 -lyr 2
IOPin: memdata[7] 0.0000 310.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 309.7500 1.5000 311.2500 -lyr 3
IOPin: memdata[6] 0.0000 409.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 408.7500 1.5000 410.2500 -lyr 3
IOPin: memdata[5] 0.0000 316.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 315.7500 1.5000 317.2500 -lyr 3
IOPin: memdata[4] 0.0000 370.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 369.7500 1.5000 371.2500 -lyr 3
IOPin: memdata[3] 0.0000 349.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 348.7500 1.5000 350.2500 -lyr 3
IOPin: memdata[2] 0.0000 355.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 354.7500 1.5000 356.2500 -lyr 3
IOPin: memdata[1] 0.0000 289.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 288.7500 1.5000 290.2500 -lyr 3
IOPin: memdata[0] 0.0000 376.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 375.7500 1.5000 377.2500 -lyr 3
IOPin: memread 212.4000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 211.9500 749.1000 212.8500 750.0000 -lyr 2
IOPin: memwrite 207.6000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 207.1500 749.1000 208.0500 750.0000 -lyr 2
IOPin: adr[7] 363.6000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 363.1500 749.1000 364.0500 750.0000 -lyr 2
IOPin: adr[6] 450.0000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 449.5500 749.1000 450.4500 750.0000 -lyr 2
IOPin: adr[5] 502.8000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 502.3500 749.1000 503.2500 750.0000 -lyr 2
IOPin: adr[4] 390.0000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 389.5500 749.1000 390.4500 750.0000 -lyr 2
IOPin: adr[3] 368.4000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 367.9500 749.1000 368.8500 750.0000 -lyr 2
IOPin: adr[2] 356.4000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 355.9500 749.1000 356.8500 750.0000 -lyr 2
IOPin: adr[1] 351.6000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 351.1500 749.1000 352.0500 750.0000 -lyr 2
IOPin: adr[0] 346.8000 750.0000 N 2 0.9000 0.9000 placed 1
  PinBox: 346.3500 749.1000 347.2500 750.0000 -lyr 2
IOPin: writedata[7] 817.6500 478.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 477.7500 817.6500 479.2500 -lyr 3
IOPin: writedata[6] 817.6500 451.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 450.7500 817.6500 452.2500 -lyr 3
IOPin: writedata[5] 817.6500 442.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 441.7500 817.6500 443.2500 -lyr 3
IOPin: writedata[4] 817.6500 466.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 465.7500 817.6500 467.2500 -lyr 3
IOPin: writedata[3] 817.6500 460.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 459.7500 817.6500 461.2500 -lyr 3
IOPin: writedata[2] 817.6500 436.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 435.7500 817.6500 437.2500 -lyr 3
IOPin: writedata[1] 817.6500 430.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 429.7500 817.6500 431.2500 -lyr 3
IOPin: writedata[0] 817.6500 409.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 408.7500 817.6500 410.2500 -lyr 3
IOPin: test_si 0.0000 673.5000 W 3 1.5000 1.5000 placed 1
  PinBox: 0.0000 672.7500 1.5000 674.2500 -lyr 3
IOPin: test_so 817.6500 424.5000 E 3 1.5000 1.5000 placed 1
  PinBox: 816.1500 423.7500 817.6500 425.2500 -lyr 3
IOPin: test_se 397.2000 0.0000 S 2 0.9000 0.9000 placed 1
  PinBox: 396.7500 0.0000 397.6500 0.9000 -lyr 2

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
  <Pin name="clk" status="placed" >
    <Port>
      <Pref x=402.0000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=401.5500 lly=0.0000 urx=402.4500 ury=0.9000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="reset" status="placed" >
    <Port>
      <Pref x=219.6000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=219.1500 lly=749.1000 urx=220.0500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[7]" status="placed" >
    <Port>
      <Pref x=0.0000 y=310.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=309.7500 urx=1.5000 ury=311.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[6]" status="placed" >
    <Port>
      <Pref x=0.0000 y=409.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=408.7500 urx=1.5000 ury=410.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[5]" status="placed" >
    <Port>
      <Pref x=0.0000 y=316.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=315.7500 urx=1.5000 ury=317.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[4]" status="placed" >
    <Port>
      <Pref x=0.0000 y=370.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=369.7500 urx=1.5000 ury=371.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[3]" status="placed" >
    <Port>
      <Pref x=0.0000 y=349.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=348.7500 urx=1.5000 ury=350.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[2]" status="placed" >
    <Port>
      <Pref x=0.0000 y=355.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=354.7500 urx=1.5000 ury=356.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[1]" status="placed" >
    <Port>
      <Pref x=0.0000 y=289.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=288.7500 urx=1.5000 ury=290.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memdata[0]" status="placed" >
    <Port>
      <Pref x=0.0000 y=376.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=375.7500 urx=1.5000 ury=377.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memread" status="placed" >
    <Port>
      <Pref x=212.4000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=211.9500 lly=749.1000 urx=212.8500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="memwrite" status="placed" >
    <Port>
      <Pref x=207.6000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=207.1500 lly=749.1000 urx=208.0500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[7]" status="placed" >
    <Port>
      <Pref x=363.6000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=363.1500 lly=749.1000 urx=364.0500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[6]" status="placed" >
    <Port>
      <Pref x=450.0000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=449.5500 lly=749.1000 urx=450.4500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[5]" status="placed" >
    <Port>
      <Pref x=502.8000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=502.3500 lly=749.1000 urx=503.2500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[4]" status="placed" >
    <Port>
      <Pref x=390.0000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=389.5500 lly=749.1000 urx=390.4500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[3]" status="placed" >
    <Port>
      <Pref x=368.4000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=367.9500 lly=749.1000 urx=368.8500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[2]" status="placed" >
    <Port>
      <Pref x=356.4000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=355.9500 lly=749.1000 urx=356.8500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[1]" status="placed" >
    <Port>
      <Pref x=351.6000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=351.1500 lly=749.1000 urx=352.0500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="adr[0]" status="placed" >
    <Port>
      <Pref x=346.8000 y=750.0000 side=N width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=346.3500 lly=749.1000 urx=347.2500 ury=750.0000 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[7]" status="placed" >
    <Port>
      <Pref x=817.6500 y=478.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=477.7500 urx=817.6500 ury=479.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[6]" status="placed" >
    <Port>
      <Pref x=817.6500 y=451.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=450.7500 urx=817.6500 ury=452.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[5]" status="placed" >
    <Port>
      <Pref x=817.6500 y=442.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=441.7500 urx=817.6500 ury=443.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[4]" status="placed" >
    <Port>
      <Pref x=817.6500 y=466.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=465.7500 urx=817.6500 ury=467.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[3]" status="placed" >
    <Port>
      <Pref x=817.6500 y=460.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=459.7500 urx=817.6500 ury=461.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[2]" status="placed" >
    <Port>
      <Pref x=817.6500 y=436.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=435.7500 urx=817.6500 ury=437.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[1]" status="placed" >
    <Port>
      <Pref x=817.6500 y=430.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=429.7500 urx=817.6500 ury=431.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="writedata[0]" status="placed" >
    <Port>
      <Pref x=817.6500 y=409.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=408.7500 urx=817.6500 ury=410.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_si" status="placed" >
    <Port>
      <Pref x=0.0000 y=673.5000 side=W width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=0.0000 lly=672.7500 urx=1.5000 ury=674.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_so" status="placed" >
    <Port>
      <Pref x=817.6500 y=424.5000 side=E width=1.5000 depth=1.5000 />
      <Layer id=3 >
        <Box llx=816.1500 lly=423.7500 urx=817.6500 ury=425.2500 />
      </Layer>
    </Port>
  </Pin>
  <Pin name="test_se" status="placed" >
    <Port>
      <Pref x=397.2000 y=0.0000 side=S width=0.9000 depth=0.9000 />
      <Layer id=2 >
        <Box llx=396.7500 lly=0.0000 urx=397.6500 ury=0.9000 />
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
  <Design name="mips">
	<prop name="CUT_ROWS" type=Int value=0 />
  </Design>
</Properties>

################################################################################
#  NetProperties: <net_name> [-special] [-def_prop {int|dbl|str} <value>]...   #
################################################################################
