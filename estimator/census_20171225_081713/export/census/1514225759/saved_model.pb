ш
б3Љ3
9
Add
x"T
y"T
z"T"
Ttype:
2	
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
Ж
AsString

input"T

output"
Ttype:
	2	
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	


OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisintџџџџџџџџџ"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
)
Rank

input"T

output"	
Ttype
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sigmoid
x"T
y"T"
Ttype:	
2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
№
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2		"
Tidxtype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
9
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.4.12v1.4.0-19-ga52c8d9b01єМ

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 

global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
В
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_1Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_2Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_3Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_4Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_5Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_6Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_7Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_8Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_9Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
i
Placeholder_10Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
i
Placeholder_11Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
i
Placeholder_12Placeholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ

=dnn/input_from_feature_columns/input_layer/age/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
г
9dnn/input_from_feature_columns/input_layer/age/ExpandDims
ExpandDimsPlaceholder_8=dnn/input_from_feature_columns/input_layer/age/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
­
4dnn/input_from_feature_columns/input_layer/age/ShapeShape9dnn/input_from_feature_columns/input_layer/age/ExpandDims*
out_type0*
T0*
_output_shapes
:

Bdnn/input_from_feature_columns/input_layer/age/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ф
<dnn/input_from_feature_columns/input_layer/age/strided_sliceStridedSlice4dnn/input_from_feature_columns/input_layer/age/ShapeBdnn/input_from_feature_columns/input_layer/age/strided_slice/stackDdnn/input_from_feature_columns/input_layer/age/strided_slice/stack_1Ddnn/input_from_feature_columns/input_layer/age/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

>dnn/input_from_feature_columns/input_layer/age/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
ќ
<dnn/input_from_feature_columns/input_layer/age/Reshape/shapePack<dnn/input_from_feature_columns/input_layer/age/strided_slice>dnn/input_from_feature_columns/input_layer/age/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
њ
6dnn/input_from_feature_columns/input_layer/age/ReshapeReshape9dnn/input_from_feature_columns/input_layer/age/ExpandDims<dnn/input_from_feature_columns/input_layer/age/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Fdnn/input_from_feature_columns/input_layer/capital_gain/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ц
Bdnn/input_from_feature_columns/input_layer/capital_gain/ExpandDims
ExpandDimsPlaceholder_10Fdnn/input_from_feature_columns/input_layer/capital_gain/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
П
=dnn/input_from_feature_columns/input_layer/capital_gain/ShapeShapeBdnn/input_from_feature_columns/input_layer/capital_gain/ExpandDims*
out_type0*
T0*
_output_shapes
:

Kdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Mdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Mdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Ednn/input_from_feature_columns/input_layer/capital_gain/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/capital_gain/ShapeKdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stackMdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/capital_gain/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Gdnn/input_from_feature_columns/input_layer/capital_gain/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 

Ednn/input_from_feature_columns/input_layer/capital_gain/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/capital_gain/strided_sliceGdnn/input_from_feature_columns/input_layer/capital_gain/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:

?dnn/input_from_feature_columns/input_layer/capital_gain/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/capital_gain/ExpandDimsEdnn/input_from_feature_columns/input_layer/capital_gain/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Fdnn/input_from_feature_columns/input_layer/capital_loss/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ц
Bdnn/input_from_feature_columns/input_layer/capital_loss/ExpandDims
ExpandDimsPlaceholder_11Fdnn/input_from_feature_columns/input_layer/capital_loss/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
П
=dnn/input_from_feature_columns/input_layer/capital_loss/ShapeShapeBdnn/input_from_feature_columns/input_layer/capital_loss/ExpandDims*
out_type0*
T0*
_output_shapes
:

Kdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Mdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Mdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Ednn/input_from_feature_columns/input_layer/capital_loss/strided_sliceStridedSlice=dnn/input_from_feature_columns/input_layer/capital_loss/ShapeKdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stackMdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_1Mdnn/input_from_feature_columns/input_layer/capital_loss/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Gdnn/input_from_feature_columns/input_layer/capital_loss/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 

Ednn/input_from_feature_columns/input_layer/capital_loss/Reshape/shapePackEdnn/input_from_feature_columns/input_layer/capital_loss/strided_sliceGdnn/input_from_feature_columns/input_layer/capital_loss/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:

?dnn/input_from_feature_columns/input_layer/capital_loss/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/capital_loss/ExpandDimsEdnn/input_from_feature_columns/input_layer/capital_loss/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Mdnn/input_from_feature_columns/input_layer/education_indicator/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ѓ
Idnn/input_from_feature_columns/input_layer/education_indicator/ExpandDims
ExpandDimsPlaceholder_2Mdnn/input_from_feature_columns/input_layer/education_indicator/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
н
Tdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/ShapeShapeIdnn/input_from_feature_columns/input_layer/education_indicator/ExpandDims*
out_type0*
T0*
_output_shapes
:
х
Sdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/CastCastTdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Wdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Й
Wdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/NotEqualNotEqualIdnn/input_from_feature_columns/input_layer/education_indicator/ExpandDimsWdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
п
Tdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/WhereWhereWdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\dnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ц
Vdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/ReshapeReshapeIdnn/input_from_feature_columns/input_layer/education_indicator/ExpandDims\dnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Г
bdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
Е
ddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Е
ddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

\dnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_sliceStridedSliceTdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Wherebdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice/stackddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice/stack_1ddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Е
ddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
З
fdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
З
fdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

^dnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1StridedSliceTdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Whereddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1/stackfdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1/stack_1fdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
я
Vdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/unstackUnpackSdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
№
Tdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/stackPackXdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
С
Rdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/MulMul^dnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_slice_1Tdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Ў
ddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
о
Rdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/SumSumRdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Mulddnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Й
Rdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/AddAdd\dnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/strided_sliceRdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
ч
Udnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/GatherGatherVdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/ReshapeRdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ц
Udnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ConstConst*
dtype0*М
valueВBЏB
 BachelorsB HS-gradB 11thB MastersB 9thB Some-collegeB Assoc-acdmB
 Assoc-vocB 7th-8thB
 DoctorateB Prof-schoolB 5th-6thB 10thB 1st-4thB
 PreschoolB 12th*
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 

[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 

Udnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/rangeRange[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/startTdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/Size[dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range/delta*

Tidx0*
_output_shapes
:
ъ
Wdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ToInt64CastUdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
ц
Zdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
Ћ
`dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

ednn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/table_initInitializeTableV2Zdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_tableUdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ConstWdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/ToInt64*

Tkey0*

Tval0	
Ж
Pdnn/input_from_feature_columns/input_layer/education_indicator/hash_table_LookupLookupTableFindV2Zdnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_tableUdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/Gather`dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
Zdnn/input_from_feature_columns/input_layer/education_indicator/SparseToDense/default_valueConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

Ldnn/input_from_feature_columns/input_layer/education_indicator/SparseToDenseSparseToDenseTdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/WhereSdnn/input_from_feature_columns/input_layer/education_indicator/to_sparse_input/CastPdnn/input_from_feature_columns/input_layer/education_indicator/hash_table_LookupZdnn/input_from_feature_columns/input_layer/education_indicator/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ldnn/input_from_feature_columns/input_layer/education_indicator/one_hot/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Ndnn/input_from_feature_columns/input_layer/education_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 

Ldnn/input_from_feature_columns/input_layer/education_indicator/one_hot/depthConst*
dtype0*
value	B :*
_output_shapes
: 

Odnn/input_from_feature_columns/input_layer/education_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Pdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
э
Fdnn/input_from_feature_columns/input_layer/education_indicator/one_hotOneHotLdnn/input_from_feature_columns/input_layer/education_indicator/SparseToDenseLdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/depthOdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/on_valuePdnn/input_from_feature_columns/input_layer/education_indicator/one_hot/off_value*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
axisџџџџџџџџџ*
T0*
TI0	
Ї
Tdnn/input_from_feature_columns/input_layer/education_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
ўџџџџџџџџ*
_output_shapes
:
Ж
Bdnn/input_from_feature_columns/input_layer/education_indicator/SumSumFdnn/input_from_feature_columns/input_layer/education_indicator/one_hotTdnn/input_from_feature_columns/input_layer/education_indicator/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
Ц
Ddnn/input_from_feature_columns/input_layer/education_indicator/ShapeShapeBdnn/input_from_feature_columns/input_layer/education_indicator/Sum*
out_type0*
T0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Д
Ldnn/input_from_feature_columns/input_layer/education_indicator/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/education_indicator/ShapeRdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stackTdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/education_indicator/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Ndnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Ќ
Ldnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/education_indicator/strided_sliceNdnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
Ѓ
Fdnn/input_from_feature_columns/input_layer/education_indicator/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/education_indicator/SumLdnn/input_from_feature_columns/input_layer/education_indicator/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Gdnn/input_from_feature_columns/input_layer/education_num/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ч
Cdnn/input_from_feature_columns/input_layer/education_num/ExpandDims
ExpandDimsPlaceholder_9Gdnn/input_from_feature_columns/input_layer/education_num/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
С
>dnn/input_from_feature_columns/input_layer/education_num/ShapeShapeCdnn/input_from_feature_columns/input_layer/education_num/ExpandDims*
out_type0*
T0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/education_num/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Fdnn/input_from_feature_columns/input_layer/education_num/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/education_num/ShapeLdnn/input_from_feature_columns/input_layer/education_num/strided_slice/stackNdnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/education_num/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Hdnn/input_from_feature_columns/input_layer/education_num/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 

Fdnn/input_from_feature_columns/input_layer/education_num/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/education_num/strided_sliceHdnn/input_from_feature_columns/input_layer/education_num/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:

@dnn/input_from_feature_columns/input_layer/education_num/ReshapeReshapeCdnn/input_from_feature_columns/input_layer/education_num/ExpandDimsFdnn/input_from_feature_columns/input_layer/education_num/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Jdnn/input_from_feature_columns/input_layer/gender_indicator/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ы
Fdnn/input_from_feature_columns/input_layer/gender_indicator/ExpandDims
ExpandDimsPlaceholderJdnn/input_from_feature_columns/input_layer/gender_indicator/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
з
Qdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/ShapeShapeFdnn/input_from_feature_columns/input_layer/gender_indicator/ExpandDims*
out_type0*
T0*
_output_shapes
:
п
Pdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/CastCastQdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
А
Tdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/NotEqualNotEqualFdnn/input_from_feature_columns/input_layer/gender_indicator/ExpandDimsTdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
й
Qdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/WhereWhereTdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ќ
Ydnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Н
Sdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/ReshapeReshapeFdnn/input_from_feature_columns/input_layer/gender_indicator/ExpandDimsYdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
А
_dnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
В
adnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
В
adnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

Ydnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_sliceStridedSliceQdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Where_dnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice/stackadnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice/stack_1adnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
В
adnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Д
cdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Д
cdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

[dnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1StridedSliceQdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Whereadnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1/stackcdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1/stack_1cdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
щ
Sdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/unstackUnpackPdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
ъ
Qdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/stackPackUdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
И
Odnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/MulMul[dnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_slice_1Qdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Ћ
adnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
е
Odnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/SumSumOdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Muladnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
А
Odnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/AddAddYdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/strided_sliceOdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
о
Rdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/GatherGatherSdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/ReshapeOdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
І
Odnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/ConstConst*
dtype0*#
valueBB FemaleB Male*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 

Udnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Udnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ў
Odnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/rangeRangeUdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/range/startNdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/SizeUdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/range/delta*

Tidx0*
_output_shapes
:
о
Qdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/ToInt64CastOdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
р
Tdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
Ѕ
Zdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

_dnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_table/table_initInitializeTableV2Tdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_tableOdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/ConstQdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/ToInt64*

Tkey0*

Tval0	
Є
Mdnn/input_from_feature_columns/input_layer/gender_indicator/hash_table_LookupLookupTableFindV2Tdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_tableRdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/GatherZdnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Ђ
Wdnn/input_from_feature_columns/input_layer/gender_indicator/SparseToDense/default_valueConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

Idnn/input_from_feature_columns/input_layer/gender_indicator/SparseToDenseSparseToDenseQdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/WherePdnn/input_from_feature_columns/input_layer/gender_indicator/to_sparse_input/CastMdnn/input_from_feature_columns/input_layer/gender_indicator/hash_table_LookupWdnn/input_from_feature_columns/input_layer/gender_indicator/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Idnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Kdnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 

Idnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/depthConst*
dtype0*
value	B :*
_output_shapes
: 

Ldnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Mdnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
о
Cdnn/input_from_feature_columns/input_layer/gender_indicator/one_hotOneHotIdnn/input_from_feature_columns/input_layer/gender_indicator/SparseToDenseIdnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/depthLdnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/on_valueMdnn/input_from_feature_columns/input_layer/gender_indicator/one_hot/off_value*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
axisџџџџџџџџџ*
T0*
TI0	
Є
Qdnn/input_from_feature_columns/input_layer/gender_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
ўџџџџџџџџ*
_output_shapes
:
­
?dnn/input_from_feature_columns/input_layer/gender_indicator/SumSumCdnn/input_from_feature_columns/input_layer/gender_indicator/one_hotQdnn/input_from_feature_columns/input_layer/gender_indicator/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
Р
Adnn/input_from_feature_columns/input_layer/gender_indicator/ShapeShape?dnn/input_from_feature_columns/input_layer/gender_indicator/Sum*
out_type0*
T0*
_output_shapes
:

Odnn/input_from_feature_columns/input_layer/gender_indicator/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Qdnn/input_from_feature_columns/input_layer/gender_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Qdnn/input_from_feature_columns/input_layer/gender_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ѕ
Idnn/input_from_feature_columns/input_layer/gender_indicator/strided_sliceStridedSliceAdnn/input_from_feature_columns/input_layer/gender_indicator/ShapeOdnn/input_from_feature_columns/input_layer/gender_indicator/strided_slice/stackQdnn/input_from_feature_columns/input_layer/gender_indicator/strided_slice/stack_1Qdnn/input_from_feature_columns/input_layer/gender_indicator/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Kdnn/input_from_feature_columns/input_layer/gender_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Ѓ
Idnn/input_from_feature_columns/input_layer/gender_indicator/Reshape/shapePackIdnn/input_from_feature_columns/input_layer/gender_indicator/strided_sliceKdnn/input_from_feature_columns/input_layer/gender_indicator/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:

Cdnn/input_from_feature_columns/input_layer/gender_indicator/ReshapeReshape?dnn/input_from_feature_columns/input_layer/gender_indicator/SumIdnn/input_from_feature_columns/input_layer/gender_indicator/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Hdnn/input_from_feature_columns/input_layer/hours_per_week/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ъ
Ddnn/input_from_feature_columns/input_layer/hours_per_week/ExpandDims
ExpandDimsPlaceholder_12Hdnn/input_from_feature_columns/input_layer/hours_per_week/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
У
?dnn/input_from_feature_columns/input_layer/hours_per_week/ShapeShapeDdnn/input_from_feature_columns/input_layer/hours_per_week/ExpandDims*
out_type0*
T0*
_output_shapes
:

Mdnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Odnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Odnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Gdnn/input_from_feature_columns/input_layer/hours_per_week/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/hours_per_week/ShapeMdnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stackOdnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/hours_per_week/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Idnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 

Gdnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/hours_per_week/strided_sliceIdnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:

Adnn/input_from_feature_columns/input_layer/hours_per_week/ReshapeReshapeDdnn/input_from_feature_columns/input_layer/hours_per_week/ExpandDimsGdnn/input_from_feature_columns/input_layer/hours_per_week/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Rdnn/input_from_feature_columns/input_layer/marital_status_indicator/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
§
Ndnn/input_from_feature_columns/input_layer/marital_status_indicator/ExpandDims
ExpandDimsPlaceholder_3Rdnn/input_from_feature_columns/input_layer/marital_status_indicator/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
ч
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/ShapeShapeNdnn/input_from_feature_columns/input_layer/marital_status_indicator/ExpandDims*
out_type0*
T0*
_output_shapes
:
я
Xdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/CastCastYdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

\dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ш
\dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/NotEqualNotEqualNdnn/input_from_feature_columns/input_layer/marital_status_indicator/ExpandDims\dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
щ
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/WhereWhere\dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Д
adnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
е
[dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/ReshapeReshapeNdnn/input_from_feature_columns/input_layer/marital_status_indicator/ExpandDimsadnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
И
gdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
К
idnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
К
idnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Њ
adnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_sliceStridedSliceYdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Wheregdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice/stackidnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice/stack_1idnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
К
idnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
М
kdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
М
kdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ж
cdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1StridedSliceYdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Whereidnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1/stackkdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1/stack_1kdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
љ
[dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/unstackUnpackXdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
њ
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/stackPack]dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
а
Wdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/MulMulcdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_slice_1Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Г
idnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
э
Wdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/SumSumWdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Mulidnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Ш
Wdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/AddAddadnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/strided_sliceWdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
і
Zdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/GatherGather[dnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/ReshapeWdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ

_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/ConstConst*
dtype0*
value|BzB Married-civ-spouseB	 DivorcedB Married-spouse-absentB Never-marriedB
 SeparatedB Married-AF-spouseB Widowed*
_output_shapes
:
 
^dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
Ї
ednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ї
ednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
О
_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/rangeRangeednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/start^dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/Sizeednn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range/delta*

Tidx0*
_output_shapes
:
ў
adnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/ToInt64Cast_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
№
ddnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
Е
jdnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
Ц
odnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/table_initInitializeTableV2ddnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table_dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/Constadnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/ToInt64*

Tkey0*

Tval0	
д
Udnn/input_from_feature_columns/input_layer/marital_status_indicator/hash_table_LookupLookupTableFindV2ddnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_tableZdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/Gatherjdnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Њ
_dnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDense/default_valueConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
В
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDenseSparseToDenseYdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/WhereXdnn/input_from_feature_columns/input_layer/marital_status_indicator/to_sparse_input/CastUdnn/input_from_feature_columns/input_layer/marital_status_indicator/hash_table_Lookup_dnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Sdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 

Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/depthConst*
dtype0*
value	B :*
_output_shapes
: 

Tdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Udnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 

Kdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hotOneHotQdnn/input_from_feature_columns/input_layer/marital_status_indicator/SparseToDenseQdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/depthTdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/on_valueUdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hot/off_value*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
axisџџџџџџџџџ*
T0*
TI0	
Ќ
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
ўџџџџџџџџ*
_output_shapes
:
Х
Gdnn/input_from_feature_columns/input_layer/marital_status_indicator/SumSumKdnn/input_from_feature_columns/input_layer/marital_status_indicator/one_hotYdnn/input_from_feature_columns/input_layer/marital_status_indicator/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
а
Idnn/input_from_feature_columns/input_layer/marital_status_indicator/ShapeShapeGdnn/input_from_feature_columns/input_layer/marital_status_indicator/Sum*
out_type0*
T0*
_output_shapes
:
Ё
Wdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ѓ
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ѓ
Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Э
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_sliceStridedSliceIdnn/input_from_feature_columns/input_layer/marital_status_indicator/ShapeWdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stackYdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_1Ydnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Sdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Л
Qdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shapePackQdnn/input_from_feature_columns/input_layer/marital_status_indicator/strided_sliceSdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
В
Kdnn/input_from_feature_columns/input_layer/marital_status_indicator/ReshapeReshapeGdnn/input_from_feature_columns/input_layer/marital_status_indicator/SumQdnn/input_from_feature_columns/input_layer/marital_status_indicator/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Rdnn/input_from_feature_columns/input_layer/native_country_embedding/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
§
Ndnn/input_from_feature_columns/input_layer/native_country_embedding/ExpandDims
ExpandDimsPlaceholder_7Rdnn/input_from_feature_columns/input_layer/native_country_embedding/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
ч
Ydnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/ShapeShapeNdnn/input_from_feature_columns/input_layer/native_country_embedding/ExpandDims*
out_type0*
T0*
_output_shapes
:
я
Xdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/CastCastYdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

\dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ш
\dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/NotEqualNotEqualNdnn/input_from_feature_columns/input_layer/native_country_embedding/ExpandDims\dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
щ
Ydnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/WhereWhere\dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Д
adnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
е
[dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/ReshapeReshapeNdnn/input_from_feature_columns/input_layer/native_country_embedding/ExpandDimsadnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
И
gdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
К
idnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
К
idnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Њ
adnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_sliceStridedSliceYdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Wheregdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice/stackidnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice/stack_1idnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
К
idnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
М
kdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
М
kdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ж
cdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1StridedSliceYdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Whereidnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1/stackkdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1/stack_1kdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
љ
[dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/unstackUnpackXdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
њ
Ydnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/stackPack]dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
а
Wdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/MulMulcdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_slice_1Ydnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Г
idnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
э
Wdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/SumSumWdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Mulidnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Ш
Wdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/AddAddadnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/strided_sliceWdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
і
Zdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/GatherGather[dnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/ReshapeWdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
ј
Jdnn/input_from_feature_columns/input_layer/native_country_embedding/lookupStringToHashBucketFastZdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Gather*#
_output_shapes
:џџџџџџџџџ*
num_bucketsd
С
dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
valueB"d      *
_output_shapes
:
Д
~dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
valueB
 *    *
_output_shapes
: 
З
dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
valueB
 *ѓЕ>*
_output_shapes
: 
о
dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormaldnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:d*
dtype0*
seed2 *

seed *
T0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0
­
}dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMuldnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormaldnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
T0*
_output_shapes

:d

ydnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normalAdd}dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/mul~dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
T0*
_output_shapes

:d
С
\dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0
VariableV2*
	container *
_output_shapes

:d*
dtype0*
shape
:d*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
shared_name 

cdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/AssignAssign\dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0ydnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal*
validate_shape(*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
use_locking(*
T0*
_output_shapes

:d
х
adnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/readIdentity\dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
T0*
_output_shapes

:d
К
pdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
Й
odnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
т
jdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SliceSliceXdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Castpdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice/beginodnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Д
jdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:

idnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/ProdProdjdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slicejdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Е
sdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 

kdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/GatherGatherXdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Castsdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 

kdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Cast/xPackidnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Prodkdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
д
rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseReshapeSparseReshapeYdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/WhereXdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Castkdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Cast/x*-
_output_shapes
:џџџџџџџџџ:

{dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseReshape/IdentityIdentityJdnn/input_from_feature_columns/input_layer/native_country_embedding/lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
Е
sdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ё
qdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/GreaterEqualGreaterEqual{dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseReshape/Identitysdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ

jdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/WhereWhereqdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Х
rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/ReshapeReshapejdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Whererdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	
Й
mdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather_1Gatherrdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseReshapeldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ
О
mdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather_2Gather{dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseReshape/Identityldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ

mdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/IdentityIdentitytdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
Р
~dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
а
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsmdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather_1mdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Gather_2mdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Identity~dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
т
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
ф
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
ф
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicednn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice/stackdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
д
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/CastCastdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
ы
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/UniqueUniquednn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
в
dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/embedding_lookupGatheradnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/readdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*'
_output_shapes
:џџџџџџџџџ
ы
|dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparseSparseSegmentMeandnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/embedding_lookupdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/Unique:1dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Х
tdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
Р
ndnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_1Reshapednn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2tdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

І
jdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/ShapeShape|dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Т
xdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Ф
zdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ф
zdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ђ
rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_sliceStridedSlicejdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Shapexdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice/stackzdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice/stack_1zdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
Ў
ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 

jdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/stackPackldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/stack/0rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:

idnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/TileTilendnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_1jdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Ќ
odnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/zeros_like	ZerosLike|dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
њ
ddnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weightsSelectidnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Tileodnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/zeros_like|dnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

kdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Cast_1CastXdnn/input_from_feature_columns/input_layer/native_country_embedding/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
М
rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
Л
qdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ћ
ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_1Slicekdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Cast_1rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_1/beginqdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:

ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Shape_1Shapeddnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights*
out_type0*
T0*
_output_shapes
:
М
rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Ф
qdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ќ
ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_2Sliceldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Shape_1rdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_2/beginqdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
В
pdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
џ
kdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/concatConcatV2ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_1ldnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Slice_2pdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:

ndnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_2Reshapeddnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weightskdnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
ї
Idnn/input_from_feature_columns/input_layer/native_country_embedding/ShapeShapendnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_2*
out_type0*
T0*
_output_shapes
:
Ё
Wdnn/input_from_feature_columns/input_layer/native_country_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ѓ
Ydnn/input_from_feature_columns/input_layer/native_country_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ѓ
Ydnn/input_from_feature_columns/input_layer/native_country_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Э
Qdnn/input_from_feature_columns/input_layer/native_country_embedding/strided_sliceStridedSliceIdnn/input_from_feature_columns/input_layer/native_country_embedding/ShapeWdnn/input_from_feature_columns/input_layer/native_country_embedding/strided_slice/stackYdnn/input_from_feature_columns/input_layer/native_country_embedding/strided_slice/stack_1Ydnn/input_from_feature_columns/input_layer/native_country_embedding/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Sdnn/input_from_feature_columns/input_layer/native_country_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Л
Qdnn/input_from_feature_columns/input_layer/native_country_embedding/Reshape/shapePackQdnn/input_from_feature_columns/input_layer/native_country_embedding/strided_sliceSdnn/input_from_feature_columns/input_layer/native_country_embedding/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
й
Kdnn/input_from_feature_columns/input_layer/native_country_embedding/ReshapeReshapendnn/input_from_feature_columns/input_layer/native_country_embedding/native_country_embedding_weights/Reshape_2Qdnn/input_from_feature_columns/input_layer/native_country_embedding/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Ndnn/input_from_feature_columns/input_layer/occupation_embedding/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ѕ
Jdnn/input_from_feature_columns/input_layer/occupation_embedding/ExpandDims
ExpandDimsPlaceholder_6Ndnn/input_from_feature_columns/input_layer/occupation_embedding/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
п
Udnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/ShapeShapeJdnn/input_from_feature_columns/input_layer/occupation_embedding/ExpandDims*
out_type0*
T0*
_output_shapes
:
ч
Tdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/CastCastUdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Xdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
М
Xdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/NotEqualNotEqualJdnn/input_from_feature_columns/input_layer/occupation_embedding/ExpandDimsXdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
с
Udnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/WhereWhereXdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
А
]dnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Щ
Wdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/ReshapeReshapeJdnn/input_from_feature_columns/input_layer/occupation_embedding/ExpandDims]dnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Д
cdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
Ж
ednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ж
ednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

]dnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_sliceStridedSliceUdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Wherecdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice/stackednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice/stack_1ednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Ж
ednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
И
gdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
И
gdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ђ
_dnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1StridedSliceUdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Whereednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1/stackgdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1/stack_1gdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
ё
Wdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/unstackUnpackTdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
ђ
Udnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/stackPackYdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
Ф
Sdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/MulMul_dnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_slice_1Udnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Џ
ednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
с
Sdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/SumSumSdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Mulednn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
М
Sdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/AddAdd]dnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/strided_sliceSdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
ъ
Vdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/GatherGatherWdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/ReshapeSdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
№
Fdnn/input_from_feature_columns/input_layer/occupation_embedding/lookupStringToHashBucketFastVdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Gather*#
_output_shapes
:џџџџџџџџџ*
num_bucketsd
Й
{dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
valueB"d      *
_output_shapes
:
Ќ
zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
valueB
 *    *
_output_shapes
: 
Ў
|dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
valueB
 *ѓЕ>*
_output_shapes
: 
в
dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal{dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:d*
dtype0*
seed2 *

seed *
T0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0

ydnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulMuldnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/TruncatedNormal|dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/stddev*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
T0*
_output_shapes

:d

udnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normalAddydnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mulzdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal/mean*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
T0*
_output_shapes

:d
Й
Xdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0
VariableV2*
	container *
_output_shapes

:d*
dtype0*
shape
:d*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
shared_name 
љ
_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/AssignAssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0udnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal*
validate_shape(*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
use_locking(*
T0*
_output_shapes

:d
й
]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readIdentityXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
T0*
_output_shapes

:d
В
hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
Б
gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ц
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SliceSliceTdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Casthdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/begingdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Ќ
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
я
adnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ProdProdbdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slicebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
­
kdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
џ
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GatherGatherTdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Castkdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
э
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast/xPackadnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Prodcdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
М
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshapeSparseReshapeUdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/WhereTdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Castcdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ѕ
sdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/IdentityIdentityFdnn/input_from_feature_columns/input_layer/occupation_embedding/lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
­
kdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqualGreaterEqualsdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/Identitykdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
џ
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/WhereWhereidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Н
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ћ
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ReshapeReshapebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Wherejdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	
Ё
ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather_1Gatherjdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshapeddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ
І
ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather_2Gathersdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape/Identityddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ

ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/IdentityIdentityldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
И
vdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ј
dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather_1ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Gather_2ednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Identityvdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
к
dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
м
dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
м
dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
о
dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stackdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
У
ydnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/CastCastdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
к
{dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/UniqueUniquednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Й
dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookupGather]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read{dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*'
_output_shapes
:џџџџџџџџџ
Щ
tdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparseSparseSegmentMeandnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/embedding_lookup}dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Unique:1ydnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Н
ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
Ј
fdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1Reshapednn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ldnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0


bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/ShapeShapetdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
К
pdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
М
rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
М
rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ъ
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_sliceStridedSlicebdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shapepdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stackrdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_1rdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
І
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
і
bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stackPackddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack/0jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:

adnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/TileTilefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_1bdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

gdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/zeros_like	ZerosLiketdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weightsSelectadnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Tilegdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/zeros_liketdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ѕ
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast_1CastTdnn/input_from_feature_columns/input_layer/occupation_embedding/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
Д
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
Г
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
л
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1Slicecdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Cast_1jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/beginidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:

ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shape_1Shape\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights*
out_type0*
T0*
_output_shapes
:
Д
jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
М
idnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
м
ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2Sliceddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Shape_1jdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/beginidnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
Њ
hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
п
cdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concatConcatV2ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_1ddnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Slice_2hdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
є
fdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2Reshape\dnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weightscdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
ы
Ednn/input_from_feature_columns/input_layer/occupation_embedding/ShapeShapefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2*
out_type0*
T0*
_output_shapes
:

Sdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Й
Mdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_sliceStridedSliceEdnn/input_from_feature_columns/input_layer/occupation_embedding/ShapeSdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stackUdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_1Udnn/input_from_feature_columns/input_layer/occupation_embedding/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Odnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Џ
Mdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shapePackMdnn/input_from_feature_columns/input_layer/occupation_embedding/strided_sliceOdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
Щ
Gdnn/input_from_feature_columns/input_layer/occupation_embedding/ReshapeReshapefdnn/input_from_feature_columns/input_layer/occupation_embedding/occupation_embedding_weights/Reshape_2Mdnn/input_from_feature_columns/input_layer/occupation_embedding/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Hdnn/input_from_feature_columns/input_layer/race_indicator/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
щ
Ddnn/input_from_feature_columns/input_layer/race_indicator/ExpandDims
ExpandDimsPlaceholder_1Hdnn/input_from_feature_columns/input_layer/race_indicator/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
г
Odnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/ShapeShapeDdnn/input_from_feature_columns/input_layer/race_indicator/ExpandDims*
out_type0*
T0*
_output_shapes
:
л
Ndnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/CastCastOdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Њ
Rdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/NotEqualNotEqualDdnn/input_from_feature_columns/input_layer/race_indicator/ExpandDimsRdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
е
Odnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/WhereWhereRdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Њ
Wdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
З
Qdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/ReshapeReshapeDdnn/input_from_feature_columns/input_layer/race_indicator/ExpandDimsWdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Ў
]dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
А
_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
А
_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
Wdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_sliceStridedSliceOdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Where]dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice/stack_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice/stack_1_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
А
_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
В
adnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
В
adnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

Ydnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1StridedSliceOdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Where_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1/stackadnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1/stack_1adnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
х
Qdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/unstackUnpackNdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
ц
Odnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/stackPackSdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
В
Mdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/MulMulYdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_slice_1Odnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Љ
_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
Я
Mdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/SumSumMdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Mul_dnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Њ
Mdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/AddAddWdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/strided_sliceMdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
и
Pdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/GatherGatherQdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/ReshapeMdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
д
Kdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/ConstConst*
dtype0*U
valueLBJB Amer-Indian-EskimoB Asian-Pac-IslanderB BlackB OtherB White*
_output_shapes
:

Jdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 

Qdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Qdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ю
Kdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/rangeRangeQdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/range/startJdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/SizeQdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/range/delta*

Tidx0*
_output_shapes
:
ж
Mdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/ToInt64CastKdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
м
Pdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
Ё
Vdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
і
[dnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_table/table_initInitializeTableV2Pdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_tableKdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/ConstMdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/ToInt64*

Tkey0*

Tval0	

Kdnn/input_from_feature_columns/input_layer/race_indicator/hash_table_LookupLookupTableFindV2Pdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_tablePdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/GatherVdnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
 
Udnn/input_from_feature_columns/input_layer/race_indicator/SparseToDense/default_valueConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

Gdnn/input_from_feature_columns/input_layer/race_indicator/SparseToDenseSparseToDenseOdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/WhereNdnn/input_from_feature_columns/input_layer/race_indicator/to_sparse_input/CastKdnn/input_from_feature_columns/input_layer/race_indicator/hash_table_LookupUdnn/input_from_feature_columns/input_layer/race_indicator/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Gdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Idnn/input_from_feature_columns/input_layer/race_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 

Gdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/depthConst*
dtype0*
value	B :*
_output_shapes
: 

Jdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Kdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
д
Adnn/input_from_feature_columns/input_layer/race_indicator/one_hotOneHotGdnn/input_from_feature_columns/input_layer/race_indicator/SparseToDenseGdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/depthJdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/on_valueKdnn/input_from_feature_columns/input_layer/race_indicator/one_hot/off_value*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
axisџџџџџџџџџ*
T0*
TI0	
Ђ
Odnn/input_from_feature_columns/input_layer/race_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
ўџџџџџџџџ*
_output_shapes
:
Ї
=dnn/input_from_feature_columns/input_layer/race_indicator/SumSumAdnn/input_from_feature_columns/input_layer/race_indicator/one_hotOdnn/input_from_feature_columns/input_layer/race_indicator/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
М
?dnn/input_from_feature_columns/input_layer/race_indicator/ShapeShape=dnn/input_from_feature_columns/input_layer/race_indicator/Sum*
out_type0*
T0*
_output_shapes
:

Mdnn/input_from_feature_columns/input_layer/race_indicator/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Odnn/input_from_feature_columns/input_layer/race_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Odnn/input_from_feature_columns/input_layer/race_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Gdnn/input_from_feature_columns/input_layer/race_indicator/strided_sliceStridedSlice?dnn/input_from_feature_columns/input_layer/race_indicator/ShapeMdnn/input_from_feature_columns/input_layer/race_indicator/strided_slice/stackOdnn/input_from_feature_columns/input_layer/race_indicator/strided_slice/stack_1Odnn/input_from_feature_columns/input_layer/race_indicator/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Idnn/input_from_feature_columns/input_layer/race_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 

Gdnn/input_from_feature_columns/input_layer/race_indicator/Reshape/shapePackGdnn/input_from_feature_columns/input_layer/race_indicator/strided_sliceIdnn/input_from_feature_columns/input_layer/race_indicator/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:

Adnn/input_from_feature_columns/input_layer/race_indicator/ReshapeReshape=dnn/input_from_feature_columns/input_layer/race_indicator/SumGdnn/input_from_feature_columns/input_layer/race_indicator/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Pdnn/input_from_feature_columns/input_layer/relationship_indicator/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
љ
Ldnn/input_from_feature_columns/input_layer/relationship_indicator/ExpandDims
ExpandDimsPlaceholder_4Pdnn/input_from_feature_columns/input_layer/relationship_indicator/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
у
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/ShapeShapeLdnn/input_from_feature_columns/input_layer/relationship_indicator/ExpandDims*
out_type0*
T0*
_output_shapes
:
ы
Vdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/CastCastWdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Zdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Т
Zdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/NotEqualNotEqualLdnn/input_from_feature_columns/input_layer/relationship_indicator/ExpandDimsZdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
х
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/WhereWhereZdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
В
_dnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Я
Ydnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/ReshapeReshapeLdnn/input_from_feature_columns/input_layer/relationship_indicator/ExpandDims_dnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Ж
ednn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
И
gdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
И
gdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
 
_dnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_sliceStridedSliceWdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Whereednn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice/stackgdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice/stack_1gdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
И
gdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
К
idnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
К
idnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ќ
adnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1StridedSliceWdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Wheregdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1/stackidnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1/stack_1idnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
ѕ
Ydnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/unstackUnpackVdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
і
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/stackPack[dnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
Ъ
Udnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/MulMuladnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_slice_1Wdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Б
gdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ч
Udnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/SumSumUdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Mulgdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Т
Udnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/AddAdd_dnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/strided_sliceUdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
№
Xdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/GatherGatherYdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/ReshapeUdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
ь
[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/ConstConst*
dtype0*]
valueTBRB HusbandB Not-in-familyB WifeB
 Own-childB
 UnmarriedB Other-relative*
_output_shapes
:

Zdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
Ѓ
adnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ѓ
adnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ў
[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/rangeRangeadnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/startZdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/Sizeadnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range/delta*

Tidx0*
_output_shapes
:
і
]dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/ToInt64Cast[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
ь
`dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
Б
fdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
Ж
kdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/table_initInitializeTableV2`dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table[dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/Const]dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/ToInt64*

Tkey0*

Tval0	
Ш
Sdnn/input_from_feature_columns/input_layer/relationship_indicator/hash_table_LookupLookupTableFindV2`dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_tableXdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/Gatherfdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Ј
]dnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDense/default_valueConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
Ј
Odnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDenseSparseToDenseWdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/WhereVdnn/input_from_feature_columns/input_layer/relationship_indicator/to_sparse_input/CastSdnn/input_from_feature_columns/input_layer/relationship_indicator/hash_table_Lookup]dnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Odnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Qdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 

Odnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/depthConst*
dtype0*
value	B :*
_output_shapes
: 

Rdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Sdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
ќ
Idnn/input_from_feature_columns/input_layer/relationship_indicator/one_hotOneHotOdnn/input_from_feature_columns/input_layer/relationship_indicator/SparseToDenseOdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/depthRdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/on_valueSdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hot/off_value*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
axisџџџџџџџџџ*
T0*
TI0	
Њ
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
ўџџџџџџџџ*
_output_shapes
:
П
Ednn/input_from_feature_columns/input_layer/relationship_indicator/SumSumIdnn/input_from_feature_columns/input_layer/relationship_indicator/one_hotWdnn/input_from_feature_columns/input_layer/relationship_indicator/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
Ь
Gdnn/input_from_feature_columns/input_layer/relationship_indicator/ShapeShapeEdnn/input_from_feature_columns/input_layer/relationship_indicator/Sum*
out_type0*
T0*
_output_shapes
:

Udnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ё
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ё
Wdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
У
Odnn/input_from_feature_columns/input_layer/relationship_indicator/strided_sliceStridedSliceGdnn/input_from_feature_columns/input_layer/relationship_indicator/ShapeUdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stackWdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_1Wdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Qdnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shape/1Const*
dtype0*
value	B :*
_output_shapes
: 
Е
Odnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shapePackOdnn/input_from_feature_columns/input_layer/relationship_indicator/strided_sliceQdnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
Ќ
Idnn/input_from_feature_columns/input_layer/relationship_indicator/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/relationship_indicator/SumOdnn/input_from_feature_columns/input_layer/relationship_indicator/Reshape/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Mdnn/input_from_feature_columns/input_layer/workclass_indicator/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ѓ
Idnn/input_from_feature_columns/input_layer/workclass_indicator/ExpandDims
ExpandDimsPlaceholder_5Mdnn/input_from_feature_columns/input_layer/workclass_indicator/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
н
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/ShapeShapeIdnn/input_from_feature_columns/input_layer/workclass_indicator/ExpandDims*
out_type0*
T0*
_output_shapes
:
х
Sdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/CastCastTdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Wdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Й
Wdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/NotEqualNotEqualIdnn/input_from_feature_columns/input_layer/workclass_indicator/ExpandDimsWdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
п
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/WhereWhereWdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\dnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ц
Vdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/ReshapeReshapeIdnn/input_from_feature_columns/input_layer/workclass_indicator/ExpandDims\dnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Г
bdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
Е
ddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Е
ddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

\dnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_sliceStridedSliceTdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Wherebdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice/stackddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice/stack_1ddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Е
ddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
З
fdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
З
fdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

^dnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1StridedSliceTdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Whereddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1/stackfdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1/stack_1fdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
я
Vdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/unstackUnpackSdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
№
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/stackPackXdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
С
Rdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/MulMul^dnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_slice_1Tdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
Ў
ddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
о
Rdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/SumSumRdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Mulddnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Й
Rdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/AddAdd\dnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/strided_sliceRdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
ч
Udnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/GatherGatherVdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/ReshapeRdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ

Udnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ConstConst*
dtype0*
value}B{	B Self-emp-not-incB PrivateB
 State-govB Federal-govB
 Local-govB ?B Self-emp-incB Without-payB Never-worked*
_output_shapes
:	

Tdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/SizeConst*
dtype0*
value	B :	*
_output_shapes
: 

[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 

Udnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/rangeRange[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/startTdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/Size[dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range/delta*

Tidx0*
_output_shapes
:	
ъ
Wdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ToInt64CastUdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:	
ц
Zdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
Ћ
`dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

ednn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/table_initInitializeTableV2Zdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_tableUdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ConstWdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/ToInt64*

Tkey0*

Tval0	
Ж
Pdnn/input_from_feature_columns/input_layer/workclass_indicator/hash_table_LookupLookupTableFindV2Zdnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_tableUdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/Gather`dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
Zdnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDense/default_valueConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

Ldnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDenseSparseToDenseTdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/WhereSdnn/input_from_feature_columns/input_layer/workclass_indicator/to_sparse_input/CastPdnn/input_from_feature_columns/input_layer/workclass_indicator/hash_table_LookupZdnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0	*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ldnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/ConstConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Ndnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/Const_1Const*
dtype0*
valueB
 *    *
_output_shapes
: 

Ldnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/depthConst*
dtype0*
value	B :	*
_output_shapes
: 

Odnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/on_valueConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

Pdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/off_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
э
Fdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hotOneHotLdnn/input_from_feature_columns/input_layer/workclass_indicator/SparseToDenseLdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/depthOdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/on_valuePdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hot/off_value*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ	*
axisџџџџџџџџџ*
T0*
TI0	
Ї
Tdnn/input_from_feature_columns/input_layer/workclass_indicator/Sum/reduction_indicesConst*
dtype0*
valueB:
ўџџџџџџџџ*
_output_shapes
:
Ж
Bdnn/input_from_feature_columns/input_layer/workclass_indicator/SumSumFdnn/input_from_feature_columns/input_layer/workclass_indicator/one_hotTdnn/input_from_feature_columns/input_layer/workclass_indicator/Sum/reduction_indices*'
_output_shapes
:џџџџџџџџџ	*

Tidx0*
	keep_dims( *
T0
Ц
Ddnn/input_from_feature_columns/input_layer/workclass_indicator/ShapeShapeBdnn/input_from_feature_columns/input_layer/workclass_indicator/Sum*
out_type0*
T0*
_output_shapes
:

Rdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Tdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Д
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/strided_sliceStridedSliceDdnn/input_from_feature_columns/input_layer/workclass_indicator/ShapeRdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stackTdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_1Tdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Ndnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shape/1Const*
dtype0*
value	B :	*
_output_shapes
: 
Ќ
Ldnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shapePackLdnn/input_from_feature_columns/input_layer/workclass_indicator/strided_sliceNdnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shape/1*
N*

axis *
T0*
_output_shapes
:
Ѓ
Fdnn/input_from_feature_columns/input_layer/workclass_indicator/ReshapeReshapeBdnn/input_from_feature_columns/input_layer/workclass_indicator/SumLdnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape/shape*'
_output_shapes
:џџџџџџџџџ	*
Tshape0*
T0
x
6dnn/input_from_feature_columns/input_layer/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
С
1dnn/input_from_feature_columns/input_layer/concatConcatV26dnn/input_from_feature_columns/input_layer/age/Reshape?dnn/input_from_feature_columns/input_layer/capital_gain/Reshape?dnn/input_from_feature_columns/input_layer/capital_loss/ReshapeFdnn/input_from_feature_columns/input_layer/education_indicator/Reshape@dnn/input_from_feature_columns/input_layer/education_num/ReshapeCdnn/input_from_feature_columns/input_layer/gender_indicator/ReshapeAdnn/input_from_feature_columns/input_layer/hours_per_week/ReshapeKdnn/input_from_feature_columns/input_layer/marital_status_indicator/ReshapeKdnn/input_from_feature_columns/input_layer/native_country_embedding/ReshapeGdnn/input_from_feature_columns/input_layer/occupation_embedding/ReshapeAdnn/input_from_feature_columns/input_layer/race_indicator/ReshapeIdnn/input_from_feature_columns/input_layer/relationship_indicator/ReshapeFdnn/input_from_feature_columns/input_layer/workclass_indicator/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџB
Х
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB"B   d   *
_output_shapes
:
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *ЎBО*
_output_shapes
: 
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
valueB
 *ЎB>*
_output_shapes
: 

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:Bd*
dtype0*
seed2 *

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:Bd

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:Bd
Ч
dnn/hiddenlayer_0/kernel/part_0
VariableV2*
	container *
_output_shapes

:Bd*
dtype0*
shape
:Bd*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
shared_name 

&dnn/hiddenlayer_0/kernel/part_0/AssignAssigndnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
use_locking(*
T0*
_output_shapes

:Bd
Ў
$dnn/hiddenlayer_0/kernel/part_0/readIdentitydnn/hiddenlayer_0/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
T0*
_output_shapes

:Bd
Ў
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
valueBd*    *
_output_shapes
:d
Л
dnn/hiddenlayer_0/bias/part_0
VariableV2*
	container *
_output_shapes
:d*
dtype0*
shape:d*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
shared_name 
ў
$dnn/hiddenlayer_0/bias/part_0/AssignAssigndnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
use_locking(*
T0*
_output_shapes
:d
Є
"dnn/hiddenlayer_0/bias/part_0/readIdentitydnn/hiddenlayer_0/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
T0*
_output_shapes
:d
s
dnn/hiddenlayer_0/kernelIdentity$dnn/hiddenlayer_0/kernel/part_0/read*
T0*
_output_shapes

:Bd
Ч
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџd
k
dnn/hiddenlayer_0/biasIdentity"dnn/hiddenlayer_0/bias/part_0/read*
T0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*'
_output_shapes
:џџџџџџџџџd*
data_formatNHWC*
T0
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
[
dnn/zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

dnn/zero_fraction/EqualEqualdnn/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:џџџџџџџџџd
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd
h
dnn/zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: 
Ћ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: 

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
Х
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB"d   F   *
_output_shapes
:
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *H`@О*
_output_shapes
: 
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
valueB
 *H`@>*
_output_shapes
: 

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:dF*
dtype0*
seed2 *

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:dF

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:dF
Ч
dnn/hiddenlayer_1/kernel/part_0
VariableV2*
	container *
_output_shapes

:dF*
dtype0*
shape
:dF*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
shared_name 

&dnn/hiddenlayer_1/kernel/part_0/AssignAssigndnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
use_locking(*
T0*
_output_shapes

:dF
Ў
$dnn/hiddenlayer_1/kernel/part_0/readIdentitydnn/hiddenlayer_1/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
T0*
_output_shapes

:dF
Ў
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
valueBF*    *
_output_shapes
:F
Л
dnn/hiddenlayer_1/bias/part_0
VariableV2*
	container *
_output_shapes
:F*
dtype0*
shape:F*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
shared_name 
ў
$dnn/hiddenlayer_1/bias/part_0/AssignAssigndnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
use_locking(*
T0*
_output_shapes
:F
Є
"dnn/hiddenlayer_1/bias/part_0/readIdentitydnn/hiddenlayer_1/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
T0*
_output_shapes
:F
s
dnn/hiddenlayer_1/kernelIdentity$dnn/hiddenlayer_1/kernel/part_0/read*
T0*
_output_shapes

:dF
Ќ
dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџF
k
dnn/hiddenlayer_1/biasIdentity"dnn/hiddenlayer_1/bias/part_0/read*
T0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*'
_output_shapes
:џџџџџџџџџF*
data_formatNHWC*
T0
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџF
]
dnn/zero_fraction_1/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

dnn/zero_fraction_1/EqualEqualdnn/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:џџџџџџџџџF
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџF
j
dnn/zero_fraction_1/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: 

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
Х
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB"F   0   *
_output_shapes
:
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *йчfО*
_output_shapes
: 
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
valueB
 *йчf>*
_output_shapes
: 

Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:F0*
dtype0*
seed2 *

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0

>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0*
_output_shapes

:F0

:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0*
_output_shapes

:F0
Ч
dnn/hiddenlayer_2/kernel/part_0
VariableV2*
	container *
_output_shapes

:F0*
dtype0*
shape
:F0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
shared_name 

&dnn/hiddenlayer_2/kernel/part_0/AssignAssigndnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
use_locking(*
T0*
_output_shapes

:F0
Ў
$dnn/hiddenlayer_2/kernel/part_0/readIdentitydnn/hiddenlayer_2/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
T0*
_output_shapes

:F0
Ў
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
valueB0*    *
_output_shapes
:0
Л
dnn/hiddenlayer_2/bias/part_0
VariableV2*
	container *
_output_shapes
:0*
dtype0*
shape:0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
shared_name 
ў
$dnn/hiddenlayer_2/bias/part_0/AssignAssigndnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
use_locking(*
T0*
_output_shapes
:0
Є
"dnn/hiddenlayer_2/bias/part_0/readIdentitydnn/hiddenlayer_2/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
T0*
_output_shapes
:0
s
dnn/hiddenlayer_2/kernelIdentity$dnn/hiddenlayer_2/kernel/part_0/read*
T0*
_output_shapes

:F0
Ќ
dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/biasIdentity"dnn/hiddenlayer_2/bias/part_0/read*
T0*
_output_shapes
:0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*'
_output_shapes
:џџџџџџџџџ0*
data_formatNHWC*
T0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ0
]
dnn/zero_fraction_2/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

dnn/zero_fraction_2/EqualEqualdnn/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:џџџџџџџџџ0
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0
j
dnn/zero_fraction_2/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
 
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_2/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
_output_shapes
: 

 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
Х
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB"0   "   *
_output_shapes
:
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *О*
_output_shapes
: 
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
valueB
 *>*
_output_shapes
: 

Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:0"*
dtype0*
seed2 *

seed *
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0

>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
T0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
T0*
_output_shapes

:0"

:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
T0*
_output_shapes

:0"
Ч
dnn/hiddenlayer_3/kernel/part_0
VariableV2*
	container *
_output_shapes

:0"*
dtype0*
shape
:0"*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
shared_name 

&dnn/hiddenlayer_3/kernel/part_0/AssignAssigndnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
use_locking(*
T0*
_output_shapes

:0"
Ў
$dnn/hiddenlayer_3/kernel/part_0/readIdentitydnn/hiddenlayer_3/kernel/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
T0*
_output_shapes

:0"
Ў
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
valueB"*    *
_output_shapes
:"
Л
dnn/hiddenlayer_3/bias/part_0
VariableV2*
	container *
_output_shapes
:"*
dtype0*
shape:"*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
shared_name 
ў
$dnn/hiddenlayer_3/bias/part_0/AssignAssigndnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
use_locking(*
T0*
_output_shapes
:"
Є
"dnn/hiddenlayer_3/bias/part_0/readIdentitydnn/hiddenlayer_3/bias/part_0*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
T0*
_output_shapes
:"
s
dnn/hiddenlayer_3/kernelIdentity$dnn/hiddenlayer_3/kernel/part_0/read*
T0*
_output_shapes

:0"
Ќ
dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ"
k
dnn/hiddenlayer_3/biasIdentity"dnn/hiddenlayer_3/bias/part_0/read*
T0*
_output_shapes
:"

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*'
_output_shapes
:џџџџџџџџџ"*
data_formatNHWC*
T0
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
]
dnn/zero_fraction_3/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

dnn/zero_fraction_3/EqualEqualdnn/hiddenlayer_3/Reludnn/zero_fraction_3/zero*
T0*'
_output_shapes
:џџџџџџџџџ"
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"
j
dnn/zero_fraction_3/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
 
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
_output_shapes
: 
­
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_3/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
_output_shapes
: 

 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
T0*
_output_shapes
: 
З
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB""      *
_output_shapes
:
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *їќгО*
_output_shapes
: 
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*
dtype0*+
_class!
loc:@dnn/logits/kernel/part_0*
valueB
 *їќг>*
_output_shapes
: 

Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
_output_shapes

:"*
dtype0*
seed2 *

seed *
T0*+
_class!
loc:@dnn/logits/kernel/part_0
ў
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes
: 

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes

:"

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes

:"
Й
dnn/logits/kernel/part_0
VariableV2*
	container *
_output_shapes

:"*
dtype0*
shape
:"*+
_class!
loc:@dnn/logits/kernel/part_0*
shared_name 
ї
dnn/logits/kernel/part_0/AssignAssigndnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0*
use_locking(*
T0*
_output_shapes

:"

dnn/logits/kernel/part_0/readIdentitydnn/logits/kernel/part_0*+
_class!
loc:@dnn/logits/kernel/part_0*
T0*
_output_shapes

:"
 
(dnn/logits/bias/part_0/Initializer/zerosConst*
dtype0*)
_class
loc:@dnn/logits/bias/part_0*
valueB*    *
_output_shapes
:
­
dnn/logits/bias/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*)
_class
loc:@dnn/logits/bias/part_0*
shared_name 
т
dnn/logits/bias/part_0/AssignAssigndnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0*
use_locking(*
T0*
_output_shapes
:

dnn/logits/bias/part_0/readIdentitydnn/logits/bias/part_0*)
_class
loc:@dnn/logits/bias/part_0*
T0*
_output_shapes
:
e
dnn/logits/kernelIdentitydnn/logits/kernel/part_0/read*
T0*
_output_shapes

:"

dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџ
]
dnn/logits/biasIdentitydnn/logits/bias/part_0/read*
T0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
]
dnn/zero_fraction_4/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:џџџџџџџџџ
|
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
j
dnn/zero_fraction_4/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*
dtype0*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: 

&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst*
dtype0**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: 

dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
|
1linear/linear_model/age_bucketized/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Л
-linear/linear_model/age_bucketized/ExpandDims
ExpandDimsPlaceholder_81linear/linear_model/age_bucketized/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
ж
,linear/linear_model/age_bucketized/Bucketize	Bucketize-linear/linear_model/age_bucketized/ExpandDims*:

boundaries,
*"(  A  ШA  №A  B   B  4B  HB  \B  pB  B*
T0*'
_output_shapes
:џџџџџџџџџ

(linear/linear_model/age_bucketized/ShapeShape,linear/linear_model/age_bucketized/Bucketize*
out_type0*
T0*
_output_shapes
:

6linear/linear_model/age_bucketized/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear_model/age_bucketized/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

8linear/linear_model/age_bucketized/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ј
0linear/linear_model/age_bucketized/strided_sliceStridedSlice(linear/linear_model/age_bucketized/Shape6linear/linear_model/age_bucketized/strided_slice/stack8linear/linear_model/age_bucketized/strided_slice/stack_18linear/linear_model/age_bucketized/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
p
.linear/linear_model/age_bucketized/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
p
.linear/linear_model/age_bucketized/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
є
(linear/linear_model/age_bucketized/rangeRange.linear/linear_model/age_bucketized/range/start0linear/linear_model/age_bucketized/strided_slice.linear/linear_model/age_bucketized/range/delta*

Tidx0*#
_output_shapes
:џџџџџџџџџ
u
3linear/linear_model/age_bucketized/ExpandDims_1/dimConst*
dtype0*
value	B :*
_output_shapes
: 
к
/linear/linear_model/age_bucketized/ExpandDims_1
ExpandDims(linear/linear_model/age_bucketized/range3linear/linear_model/age_bucketized/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ

1linear/linear_model/age_bucketized/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:
з
'linear/linear_model/age_bucketized/TileTile/linear/linear_model/age_bucketized/ExpandDims_11linear/linear_model/age_bucketized/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ

0linear/linear_model/age_bucketized/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ь
*linear/linear_model/age_bucketized/ReshapeReshape'linear/linear_model/age_bucketized/Tile0linear/linear_model/age_bucketized/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
r
0linear/linear_model/age_bucketized/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
r
0linear/linear_model/age_bucketized/range_1/limitConst*
dtype0*
value	B :*
_output_shapes
: 
r
0linear/linear_model/age_bucketized/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ё
*linear/linear_model/age_bucketized/range_1Range0linear/linear_model/age_bucketized/range_1/start0linear/linear_model/age_bucketized/range_1/limit0linear/linear_model/age_bucketized/range_1/delta*

Tidx0*
_output_shapes
:
Ї
3linear/linear_model/age_bucketized/Tile_1/multiplesPack0linear/linear_model/age_bucketized/strided_slice*
N*

axis *
T0*
_output_shapes
:
в
)linear/linear_model/age_bucketized/Tile_1Tile*linear/linear_model/age_bucketized/range_13linear/linear_model/age_bucketized/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ

2linear/linear_model/age_bucketized/Reshape_1/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
е
,linear/linear_model/age_bucketized/Reshape_1Reshape,linear/linear_model/age_bucketized/Bucketize2linear/linear_model/age_bucketized/Reshape_1/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
j
(linear/linear_model/age_bucketized/mul/xConst*
dtype0*
value	B :*
_output_shapes
: 
А
&linear/linear_model/age_bucketized/mulMul(linear/linear_model/age_bucketized/mul/x)linear/linear_model/age_bucketized/Tile_1*
T0*#
_output_shapes
:џџџџџџџџџ
Б
&linear/linear_model/age_bucketized/addAdd,linear/linear_model/age_bucketized/Reshape_1&linear/linear_model/age_bucketized/mul*
T0*#
_output_shapes
:џџџџџџџџџ
Ю
(linear/linear_model/age_bucketized/stackPack*linear/linear_model/age_bucketized/Reshape)linear/linear_model/age_bucketized/Tile_1*
N*

axis *
T0*'
_output_shapes
:џџџџџџџџџ

1linear/linear_model/age_bucketized/transpose/RankRank(linear/linear_model/age_bucketized/stack*
T0*
_output_shapes
: 
t
2linear/linear_model/age_bucketized/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
П
0linear/linear_model/age_bucketized/transpose/subSub1linear/linear_model/age_bucketized/transpose/Rank2linear/linear_model/age_bucketized/transpose/sub/y*
T0*
_output_shapes
: 
z
8linear/linear_model/age_bucketized/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
z
8linear/linear_model/age_bucketized/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 

2linear/linear_model/age_bucketized/transpose/RangeRange8linear/linear_model/age_bucketized/transpose/Range/start1linear/linear_model/age_bucketized/transpose/Rank8linear/linear_model/age_bucketized/transpose/Range/delta*

Tidx0*
_output_shapes
:
Ф
2linear/linear_model/age_bucketized/transpose/sub_1Sub0linear/linear_model/age_bucketized/transpose/sub2linear/linear_model/age_bucketized/transpose/Range*
T0*
_output_shapes
:
ж
,linear/linear_model/age_bucketized/transpose	Transpose(linear/linear_model/age_bucketized/stack2linear/linear_model/age_bucketized/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
*linear/linear_model/age_bucketized/ToInt64Cast,linear/linear_model/age_bucketized/transpose*

DstT0	*

SrcT0*'
_output_shapes
:џџџџџџџџџ
n
,linear/linear_model/age_bucketized/stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 
Ь
*linear/linear_model/age_bucketized/stack_1Pack0linear/linear_model/age_bucketized/strided_slice,linear/linear_model/age_bucketized/stack_1/1*
N*

axis *
T0*
_output_shapes
:

,linear/linear_model/age_bucketized/ToInt64_1Cast*linear/linear_model/age_bucketized/stack_1*

DstT0	*

SrcT0*
_output_shapes
:

/linear/linear_model/age_bucketized/Shape_1/CastCast,linear/linear_model/age_bucketized/ToInt64_1*

DstT0*

SrcT0	*
_output_shapes
:

8linear/linear_model/age_bucketized/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear_model/age_bucketized/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

:linear/linear_model/age_bucketized/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
З
2linear/linear_model/age_bucketized/strided_slice_1StridedSlice/linear/linear_model/age_bucketized/Shape_1/Cast8linear/linear_model/age_bucketized/strided_slice_1/stack:linear/linear_model/age_bucketized/strided_slice_1/stack_1:linear/linear_model/age_bucketized/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
v
+linear/linear_model/age_bucketized/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ь
)linear/linear_model/age_bucketized/Cast/xPack2linear/linear_model/age_bucketized/strided_slice_1+linear/linear_model/age_bucketized/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

'linear/linear_model/age_bucketized/CastCast)linear/linear_model/age_bucketized/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
ѓ
0linear/linear_model/age_bucketized/SparseReshapeSparseReshape*linear/linear_model/age_bucketized/ToInt64,linear/linear_model/age_bucketized/ToInt64_1'linear/linear_model/age_bucketized/Cast*-
_output_shapes
:џџџџџџџџџ:

9linear/linear_model/age_bucketized/SparseReshape/IdentityIdentity&linear/linear_model/age_bucketized/add*
T0*#
_output_shapes
:џџџџџџџџџ
о
Clinear/linear_model/age_bucketized/weights/part_0/Initializer/zerosConst*
dtype0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
valueB*    *
_output_shapes

:
ы
1linear/linear_model/age_bucketized/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
shared_name 
в
8linear/linear_model/age_bucketized/weights/part_0/AssignAssign1linear/linear_model/age_bucketized/weights/part_0Clinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros*
validate_shape(*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ф
6linear/linear_model/age_bucketized/weights/part_0/readIdentity1linear/linear_model/age_bucketized/weights/part_0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
T0*
_output_shapes

:

;linear/linear_model/age_bucketized/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear_model/age_bucketized/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear_model/age_bucketized/weighted_sum/SliceSlice2linear/linear_model/age_bucketized/SparseReshape:1;linear/linear_model/age_bucketized/weighted_sum/Slice/begin:linear/linear_model/age_bucketized/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

5linear/linear_model/age_bucketized/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ш
4linear/linear_model/age_bucketized/weighted_sum/ProdProd5linear/linear_model/age_bucketized/weighted_sum/Slice5linear/linear_model/age_bucketized/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

>linear/linear_model/age_bucketized/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 

6linear/linear_model/age_bucketized/weighted_sum/GatherGather2linear/linear_model/age_bucketized/SparseReshape:1>linear/linear_model/age_bucketized/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ц
6linear/linear_model/age_bucketized/weighted_sum/Cast/xPack4linear/linear_model/age_bucketized/weighted_sum/Prod6linear/linear_model/age_bucketized/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

=linear/linear_model/age_bucketized/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/age_bucketized/SparseReshape2linear/linear_model/age_bucketized/SparseReshape:16linear/linear_model/age_bucketized/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Л
Flinear/linear_model/age_bucketized/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/age_bucketized/SparseReshape/Identity*
T0*#
_output_shapes
:џџџџџџџџџ

>linear/linear_model/age_bucketized/weighted_sum/GreaterEqual/yConst*
dtype0*
value	B : *
_output_shapes
: 

<linear/linear_model/age_bucketized/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/age_bucketized/weighted_sum/SparseReshape/Identity>linear/linear_model/age_bucketized/weighted_sum/GreaterEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ
Ѕ
5linear/linear_model/age_bucketized/weighted_sum/WhereWhere<linear/linear_model/age_bucketized/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

=linear/linear_model/age_bucketized/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
є
7linear/linear_model/age_bucketized/weighted_sum/ReshapeReshape5linear/linear_model/age_bucketized/weighted_sum/Where=linear/linear_model/age_bucketized/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

8linear/linear_model/age_bucketized/weighted_sum/Gather_1Gather=linear/linear_model/age_bucketized/weighted_sum/SparseReshape7linear/linear_model/age_bucketized/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

8linear/linear_model/age_bucketized/weighted_sum/Gather_2GatherFlinear/linear_model/age_bucketized/weighted_sum/SparseReshape/Identity7linear/linear_model/age_bucketized/weighted_sum/Reshape*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Њ
8linear/linear_model/age_bucketized/weighted_sum/IdentityIdentity?linear/linear_model/age_bucketized/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Ilinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ц
Wlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows8linear/linear_model/age_bucketized/weighted_sum/Gather_18linear/linear_model/age_bucketized/weighted_sum/Gather_28linear/linear_model/age_bucketized/weighted_sum/IdentityIlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ќ
[linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ў
]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ў
]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
Ulinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ш
Llinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
џ
Nlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Xlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupGather6linear/linear_model/age_bucketized/weights/part_0/readNlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*'
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

?linear/linear_model/age_bucketized/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
 
9linear/linear_model/age_bucketized/weighted_sum/Reshape_1ReshapeYlinear/linear_model/age_bucketized/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/age_bucketized/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

М
5linear/linear_model/age_bucketized/weighted_sum/ShapeShapeGlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Clinear/linear_model/age_bucketized/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
щ
=linear/linear_model/age_bucketized/weighted_sum/strided_sliceStridedSlice5linear/linear_model/age_bucketized/weighted_sum/ShapeClinear/linear_model/age_bucketized/weighted_sum/strided_slice/stackElinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_1Elinear/linear_model/age_bucketized/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
y
7linear/linear_model/age_bucketized/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
я
5linear/linear_model/age_bucketized/weighted_sum/stackPack7linear/linear_model/age_bucketized/weighted_sum/stack/0=linear/linear_model/age_bucketized/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
ћ
4linear/linear_model/age_bucketized/weighted_sum/TileTile9linear/linear_model/age_bucketized/weighted_sum/Reshape_15linear/linear_model/age_bucketized/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Т
:linear/linear_model/age_bucketized/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
/linear/linear_model/age_bucketized/weighted_sumSelect4linear/linear_model/age_bucketized/weighted_sum/Tile:linear/linear_model/age_bucketized/weighted_sum/zeros_likeGlinear/linear_model/age_bucketized/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
6linear/linear_model/age_bucketized/weighted_sum/Cast_1Cast2linear/linear_model/age_bucketized/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

=linear/linear_model/age_bucketized/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

<linear/linear_model/age_bucketized/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ї
7linear/linear_model/age_bucketized/weighted_sum/Slice_1Slice6linear/linear_model/age_bucketized/weighted_sum/Cast_1=linear/linear_model/age_bucketized/weighted_sum/Slice_1/begin<linear/linear_model/age_bucketized/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
І
7linear/linear_model/age_bucketized/weighted_sum/Shape_1Shape/linear/linear_model/age_bucketized/weighted_sum*
out_type0*
T0*
_output_shapes
:

=linear/linear_model/age_bucketized/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

<linear/linear_model/age_bucketized/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ј
7linear/linear_model/age_bucketized/weighted_sum/Slice_2Slice7linear/linear_model/age_bucketized/weighted_sum/Shape_1=linear/linear_model/age_bucketized/weighted_sum/Slice_2/begin<linear/linear_model/age_bucketized/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;linear/linear_model/age_bucketized/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ћ
6linear/linear_model/age_bucketized/weighted_sum/concatConcatV27linear/linear_model/age_bucketized/weighted_sum/Slice_17linear/linear_model/age_bucketized/weighted_sum/Slice_2;linear/linear_model/age_bucketized/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
э
9linear/linear_model/age_bucketized/weighted_sum/Reshape_2Reshape/linear/linear_model/age_bucketized/weighted_sum6linear/linear_model/age_bucketized/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Ј
<linear/linear_model/age_bucketized_X_occupation_X_race/ShapeShape,linear/linear_model/age_bucketized/Bucketize*
out_type0*
T0*
_output_shapes
:

Jlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Llinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Llinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Dlinear/linear_model/age_bucketized_X_occupation_X_race/strided_sliceStridedSlice<linear/linear_model/age_bucketized_X_occupation_X_race/ShapeJlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice/stackLlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice/stack_1Llinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Blinear/linear_model/age_bucketized_X_occupation_X_race/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Blinear/linear_model/age_bucketized_X_occupation_X_race/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ф
<linear/linear_model/age_bucketized_X_occupation_X_race/rangeRangeBlinear/linear_model/age_bucketized_X_occupation_X_race/range/startDlinear/linear_model/age_bucketized_X_occupation_X_race/strided_sliceBlinear/linear_model/age_bucketized_X_occupation_X_race/range/delta*

Tidx0*#
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 

Alinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims
ExpandDims<linear/linear_model/age_bucketized_X_occupation_X_race/rangeElinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/age_bucketized_X_occupation_X_race/Tile/multiplesConst*
dtype0*
valueB"      *
_output_shapes
:

;linear/linear_model/age_bucketized_X_occupation_X_race/TileTileAlinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDimsElinear/linear_model/age_bucketized_X_occupation_X_race/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ

Dlinear/linear_model/age_bucketized_X_occupation_X_race/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

>linear/linear_model/age_bucketized_X_occupation_X_race/ReshapeReshape;linear/linear_model/age_bucketized_X_occupation_X_race/TileDlinear/linear_model/age_bucketized_X_occupation_X_race/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Dlinear/linear_model/age_bucketized_X_occupation_X_race/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 

Dlinear/linear_model/age_bucketized_X_occupation_X_race/range_1/limitConst*
dtype0*
value	B :*
_output_shapes
: 

Dlinear/linear_model/age_bucketized_X_occupation_X_race/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
С
>linear/linear_model/age_bucketized_X_occupation_X_race/range_1RangeDlinear/linear_model/age_bucketized_X_occupation_X_race/range_1/startDlinear/linear_model/age_bucketized_X_occupation_X_race/range_1/limitDlinear/linear_model/age_bucketized_X_occupation_X_race/range_1/delta*

Tidx0*
_output_shapes
:
Я
Glinear/linear_model/age_bucketized_X_occupation_X_race/Tile_1/multiplesPackDlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice*
N*

axis *
T0*
_output_shapes
:

=linear/linear_model/age_bucketized_X_occupation_X_race/Tile_1Tile>linear/linear_model/age_bucketized_X_occupation_X_race/range_1Glinear/linear_model/age_bucketized_X_occupation_X_race/Tile_1/multiples*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ

Flinear/linear_model/age_bucketized_X_occupation_X_race/Reshape_1/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
§
@linear/linear_model/age_bucketized_X_occupation_X_race/Reshape_1Reshape,linear/linear_model/age_bucketized/BucketizeFlinear/linear_model/age_bucketized_X_occupation_X_race/Reshape_1/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
~
<linear/linear_model/age_bucketized_X_occupation_X_race/mul/xConst*
dtype0*
value	B :*
_output_shapes
: 
ь
:linear/linear_model/age_bucketized_X_occupation_X_race/mulMul<linear/linear_model/age_bucketized_X_occupation_X_race/mul/x=linear/linear_model/age_bucketized_X_occupation_X_race/Tile_1*
T0*#
_output_shapes
:џџџџџџџџџ
э
:linear/linear_model/age_bucketized_X_occupation_X_race/addAdd@linear/linear_model/age_bucketized_X_occupation_X_race/Reshape_1:linear/linear_model/age_bucketized_X_occupation_X_race/mul*
T0*#
_output_shapes
:џџџџџџџџџ

<linear/linear_model/age_bucketized_X_occupation_X_race/stackPack>linear/linear_model/age_bucketized_X_occupation_X_race/Reshape=linear/linear_model/age_bucketized_X_occupation_X_race/Tile_1*
N*

axis *
T0*'
_output_shapes
:џџџџџџџџџ
Ќ
Elinear/linear_model/age_bucketized_X_occupation_X_race/transpose/RankRank<linear/linear_model/age_bucketized_X_occupation_X_race/stack*
T0*
_output_shapes
: 

Flinear/linear_model/age_bucketized_X_occupation_X_race/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
ћ
Dlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/subSubElinear/linear_model/age_bucketized_X_occupation_X_race/transpose/RankFlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/sub/y*
T0*
_output_shapes
: 

Llinear/linear_model/age_bucketized_X_occupation_X_race/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Llinear/linear_model/age_bucketized_X_occupation_X_race/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
к
Flinear/linear_model/age_bucketized_X_occupation_X_race/transpose/RangeRangeLlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/Range/startElinear/linear_model/age_bucketized_X_occupation_X_race/transpose/RankLlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/Range/delta*

Tidx0*
_output_shapes
:

Flinear/linear_model/age_bucketized_X_occupation_X_race/transpose/sub_1SubDlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/subFlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/Range*
T0*
_output_shapes
:

@linear/linear_model/age_bucketized_X_occupation_X_race/transpose	Transpose<linear/linear_model/age_bucketized_X_occupation_X_race/stackFlinear/linear_model/age_bucketized_X_occupation_X_race/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:џџџџџџџџџ
Щ
>linear/linear_model/age_bucketized_X_occupation_X_race/ToInt64Cast@linear/linear_model/age_bucketized_X_occupation_X_race/transpose*

DstT0	*

SrcT0*'
_output_shapes
:џџџџџџџџџ

@linear/linear_model/age_bucketized_X_occupation_X_race/stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 

>linear/linear_model/age_bucketized_X_occupation_X_race/stack_1PackDlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice@linear/linear_model/age_bucketized_X_occupation_X_race/stack_1/1*
N*

axis *
T0*
_output_shapes
:
М
@linear/linear_model/age_bucketized_X_occupation_X_race/ToInt64_1Cast>linear/linear_model/age_bucketized_X_occupation_X_race/stack_1*

DstT0	*

SrcT0*
_output_shapes
:

Glinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_1/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ч
Clinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_1
ExpandDimsPlaceholder_1Glinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
Я
Llinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/ShapeShapeClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_1*
out_type0*
T0*
_output_shapes
:
е
Klinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/CastCastLlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:

Olinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ѓ
Olinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/NotEqualNotEqualClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_1Olinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
Я
Llinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/WhereWhereOlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ї
Tlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
А
Nlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/ReshapeReshapeClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_1Tlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
Ћ
Zlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
­
\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
­
\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
щ
Tlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_sliceStridedSliceLlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/WhereZlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice/stack\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice/stack_1\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
­
\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Џ
^linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Џ
^linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ѕ
Vlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1StridedSliceLlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Where\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1/stack^linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1/stack_1^linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
п
Nlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/unstackUnpackKlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
р
Llinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/stackPackPlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
Љ
Jlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/MulMulVlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_slice_1Llinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ
І
\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
Ц
Jlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/SumSumJlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Mul\linear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Ё
Jlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/AddAddTlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/strided_sliceJlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
Я
Mlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/GatherGatherNlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/ReshapeJlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
б
Hlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/ConstConst*
dtype0*U
valueLBJB Amer-Indian-EskimoB Asian-Pac-IslanderB BlackB OtherB White*
_output_shapes
:

Glinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 

Nlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Nlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
т
Hlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/rangeRangeNlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/range/startGlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/SizeNlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/range/delta*

Tidx0*
_output_shapes
:
а
Jlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/ToInt64CastHlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
й
Mlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 

Slinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
ъ
Xlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_table/table_initInitializeTableV2Mlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_tableHlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/ConstJlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/ToInt64*

Tkey0*

Tval0	

Hlinear/linear_model/age_bucketized_X_occupation_X_race/hash_table_LookupLookupTableFindV2Mlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_tableMlinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/GatherSlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ч
Clinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2
ExpandDimsPlaceholder_6Glinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
С
@linear/linear_model/age_bucketized_X_occupation_X_race/ToInt64_2Cast:linear/linear_model/age_bucketized_X_occupation_X_race/add*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/age_bucketized_X_occupation_X_race/SparseCrossSparseCross>linear/linear_model/age_bucketized_X_occupation_X_race/ToInt64Llinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/Where@linear/linear_model/age_bucketized_X_occupation_X_race/ToInt64_2Hlinear/linear_model/age_bucketized_X_occupation_X_race/hash_table_Lookup@linear/linear_model/age_bucketized_X_occupation_X_race/ToInt64_1Klinear/linear_model/age_bucketized_X_occupation_X_race/to_sparse_input/CastClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2*
internal_type0	*
dense_types
2*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
out_type0	*
N*
num_bucketsР=*
hash_keyўпђзь*
sparse_types
2		*
hashed_output(
Х
Clinear/linear_model/age_bucketized_X_occupation_X_race/Shape_1/CastCastDlinear/linear_model/age_bucketized_X_occupation_X_race/SparseCross:2*

DstT0*

SrcT0	*
_output_shapes
:

Llinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:

Nlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Nlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Flinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1StridedSliceClinear/linear_model/age_bucketized_X_occupation_X_race/Shape_1/CastLlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1/stackNlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1/stack_1Nlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

?linear/linear_model/age_bucketized_X_occupation_X_race/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 

=linear/linear_model/age_bucketized_X_occupation_X_race/Cast/xPackFlinear/linear_model/age_bucketized_X_occupation_X_race/strided_slice_1?linear/linear_model/age_bucketized_X_occupation_X_race/Cast/x/1*
N*

axis *
T0*
_output_shapes
:
Ж
;linear/linear_model/age_bucketized_X_occupation_X_race/CastCast=linear/linear_model/age_bucketized_X_occupation_X_race/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
Ы
Dlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshapeSparseReshapeBlinear/linear_model/age_bucketized_X_occupation_X_race/SparseCrossDlinear/linear_model/age_bucketized_X_occupation_X_race/SparseCross:2;linear/linear_model/age_bucketized_X_occupation_X_race/Cast*-
_output_shapes
:џџџџџџџџџ:
Э
Mlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshape/IdentityIdentityDlinear/linear_model/age_bucketized_X_occupation_X_race/SparseCross:1*
T0	*#
_output_shapes
:џџџџџџџџџ

Wlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zerosConst*
dtype0*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*
valueB
Р=*    * 
_output_shapes
:
Р=

Elinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0
VariableV2*
	container * 
_output_shapes
:
Р=*
dtype0*
shape:
Р=*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*
shared_name 
Є
Llinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/AssignAssignElinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0Wlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros*
validate_shape(*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*
use_locking(*
T0* 
_output_shapes
:
Р=
Ђ
Jlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/readIdentityElinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*
T0* 
_output_shapes
:
Р=

Olinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

Nlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
э
Ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SliceSliceFlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshape:1Olinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice/beginNlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Є
Hlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/ProdProdIlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SliceIlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

Rlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
П
Jlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/GatherGatherFlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshape:1Rlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
Ђ
Jlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Cast/xPackHlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/ProdJlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:
ы
Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseReshapeSparseReshapeDlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshapeFlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshape:1Jlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
у
Zlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseReshape/IdentityIdentityMlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Rlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
О
Plinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/GreaterEqualGreaterEqualZlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseReshape/IdentityRlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Э
Ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/WhereWherePlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Є
Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
А
Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/ReshapeReshapeIlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/WhereQlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	
ж
Llinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather_1GatherQlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseReshapeKlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ
л
Llinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather_2GatherZlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseReshape/IdentityKlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
в
Llinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/IdentityIdentitySlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

]linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Њ
klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsLlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather_1Llinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Gather_2Llinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Identity]linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Р
olinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Т
qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Т
qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
м
ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceklinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsolinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice/stackqlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

`linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/CastCastilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Ї
blinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/UniqueUniquemlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
р
llinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherJlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/readblinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*'
_output_shapes
:џџџџџџџџџ
у
[linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparseSparseSegmentSumllinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/embedding_lookupdlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/Unique:1`linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
Є
Slinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
м
Mlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape_1Reshapemlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Slinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

ф
Ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/ShapeShape[linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Ё
Wlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Ѓ
Ylinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ѓ
Ylinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Э
Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_sliceStridedSliceIlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/ShapeWlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice/stackYlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice/stack_1Ylinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
Ћ
Ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/stackPackKlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/stack/0Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
З
Hlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/TileTileMlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape_1Ilinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ъ
Nlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/zeros_like	ZerosLike[linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
і
Clinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sumSelectHlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/TileNlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/zeros_like[linear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ю
Jlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Cast_1CastFlinear/linear_model/age_bucketized_X_occupation_X_race/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

Plinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ї
Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_1SliceJlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Cast_1Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_1/beginPlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ю
Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Shape_1ShapeClinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum*
out_type0*
T0*
_output_shapes
:

Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Ѓ
Plinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ј
Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_2SliceKlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Shape_1Qlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_2/beginPlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Olinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ћ
Jlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/concatConcatV2Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_1Klinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Slice_2Olinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
Љ
Mlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape_2ReshapeClinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sumJlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
w
,linear/linear_model/education/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Б
(linear/linear_model/education/ExpandDims
ExpandDimsPlaceholder_2,linear/linear_model/education/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/education/to_sparse_input/ShapeShape(linear/linear_model/education/ExpandDims*
out_type0*
T0*
_output_shapes
:
Ѓ
2linear/linear_model/education/to_sparse_input/CastCast3linear/linear_model/education/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
w
6linear/linear_model/education/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
ж
6linear/linear_model/education/to_sparse_input/NotEqualNotEqual(linear/linear_model/education/ExpandDims6linear/linear_model/education/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/education/to_sparse_input/WhereWhere6linear/linear_model/education/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

;linear/linear_model/education/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
у
5linear/linear_model/education/to_sparse_input/ReshapeReshape(linear/linear_model/education/ExpandDims;linear/linear_model/education/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Alinear/linear_model/education/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

Clinear/linear_model/education/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Clinear/linear_model/education/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ь
;linear/linear_model/education/to_sparse_input/strided_sliceStridedSlice3linear/linear_model/education/to_sparse_input/WhereAlinear/linear_model/education/to_sparse_input/strided_slice/stackClinear/linear_model/education/to_sparse_input/strided_slice/stack_1Clinear/linear_model/education/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Clinear/linear_model/education/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Elinear/linear_model/education/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Elinear/linear_model/education/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
=linear/linear_model/education/to_sparse_input/strided_slice_1StridedSlice3linear/linear_model/education/to_sparse_input/WhereClinear/linear_model/education/to_sparse_input/strided_slice_1/stackElinear/linear_model/education/to_sparse_input/strided_slice_1/stack_1Elinear/linear_model/education/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
­
5linear/linear_model/education/to_sparse_input/unstackUnpack2linear/linear_model/education/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
Ў
3linear/linear_model/education/to_sparse_input/stackPack7linear/linear_model/education/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
о
1linear/linear_model/education/to_sparse_input/MulMul=linear/linear_model/education/to_sparse_input/strided_slice_13linear/linear_model/education/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

Clinear/linear_model/education/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ћ
1linear/linear_model/education/to_sparse_input/SumSum1linear/linear_model/education/to_sparse_input/MulClinear/linear_model/education/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
ж
1linear/linear_model/education/to_sparse_input/AddAdd;linear/linear_model/education/to_sparse_input/strided_slice1linear/linear_model/education/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ

4linear/linear_model/education/to_sparse_input/GatherGather5linear/linear_model/education/to_sparse_input/Reshape1linear/linear_model/education/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
4linear/linear_model/education/education_lookup/ConstConst*
dtype0*М
valueВBЏB
 BachelorsB HS-gradB 11thB MastersB 9thB Some-collegeB Assoc-acdmB
 Assoc-vocB 7th-8thB
 DoctorateB Prof-schoolB 5th-6thB 10thB 1st-4thB
 PreschoolB 12th*
_output_shapes
:
u
3linear/linear_model/education/education_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
|
:linear/linear_model/education/education_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
|
:linear/linear_model/education/education_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 

4linear/linear_model/education/education_lookup/rangeRange:linear/linear_model/education/education_lookup/range/start3linear/linear_model/education/education_lookup/Size:linear/linear_model/education/education_lookup/range/delta*

Tidx0*
_output_shapes
:
Ј
6linear/linear_model/education/education_lookup/ToInt64Cast4linear/linear_model/education/education_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
Х
9linear/linear_model/education/education_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 

?linear/linear_model/education/education_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

Dlinear/linear_model/education/education_lookup/hash_table/table_initInitializeTableV29linear/linear_model/education/education_lookup/hash_table4linear/linear_model/education/education_lookup/Const6linear/linear_model/education/education_lookup/ToInt64*

Tkey0*

Tval0	
В
/linear/linear_model/education/hash_table_LookupLookupTableFindV29linear/linear_model/education/education_lookup/hash_table4linear/linear_model/education/to_sparse_input/Gather?linear/linear_model/education/education_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ

(linear/linear_model/education/Shape/CastCast2linear/linear_model/education/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
{
1linear/linear_model/education/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
}
3linear/linear_model/education/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
}
3linear/linear_model/education/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

+linear/linear_model/education/strided_sliceStridedSlice(linear/linear_model/education/Shape/Cast1linear/linear_model/education/strided_slice/stack3linear/linear_model/education/strided_slice/stack_13linear/linear_model/education/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
q
&linear/linear_model/education/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Л
$linear/linear_model/education/Cast/xPack+linear/linear_model/education/strided_slice&linear/linear_model/education/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

"linear/linear_model/education/CastCast$linear/linear_model/education/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
ј
+linear/linear_model/education/SparseReshapeSparseReshape3linear/linear_model/education/to_sparse_input/Where2linear/linear_model/education/to_sparse_input/Cast"linear/linear_model/education/Cast*-
_output_shapes
:џџџџџџџџџ:

4linear/linear_model/education/SparseReshape/IdentityIdentity/linear/linear_model/education/hash_table_Lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
д
>linear/linear_model/education/weights/part_0/Initializer/zerosConst*
dtype0*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
valueB*    *
_output_shapes

:
с
,linear/linear_model/education/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
shared_name 
О
3linear/linear_model/education/weights/part_0/AssignAssign,linear/linear_model/education/weights/part_0>linear/linear_model/education/weights/part_0/Initializer/zeros*
validate_shape(*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
use_locking(*
T0*
_output_shapes

:
е
1linear/linear_model/education/weights/part_0/readIdentity,linear/linear_model/education/weights/part_0*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
T0*
_output_shapes

:

6linear/linear_model/education/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

5linear/linear_model/education/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

0linear/linear_model/education/weighted_sum/SliceSlice-linear/linear_model/education/SparseReshape:16linear/linear_model/education/weighted_sum/Slice/begin5linear/linear_model/education/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
z
0linear/linear_model/education/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
й
/linear/linear_model/education/weighted_sum/ProdProd0linear/linear_model/education/weighted_sum/Slice0linear/linear_model/education/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
{
9linear/linear_model/education/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
є
1linear/linear_model/education/weighted_sum/GatherGather-linear/linear_model/education/SparseReshape:19linear/linear_model/education/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
з
1linear/linear_model/education/weighted_sum/Cast/xPack/linear/linear_model/education/weighted_sum/Prod1linear/linear_model/education/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

8linear/linear_model/education/weighted_sum/SparseReshapeSparseReshape+linear/linear_model/education/SparseReshape-linear/linear_model/education/SparseReshape:11linear/linear_model/education/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Б
Alinear/linear_model/education/weighted_sum/SparseReshape/IdentityIdentity4linear/linear_model/education/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
{
9linear/linear_model/education/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ѓ
7linear/linear_model/education/weighted_sum/GreaterEqualGreaterEqualAlinear/linear_model/education/weighted_sum/SparseReshape/Identity9linear/linear_model/education/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ

0linear/linear_model/education/weighted_sum/WhereWhere7linear/linear_model/education/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

8linear/linear_model/education/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
х
2linear/linear_model/education/weighted_sum/ReshapeReshape0linear/linear_model/education/weighted_sum/Where8linear/linear_model/education/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

3linear/linear_model/education/weighted_sum/Gather_1Gather8linear/linear_model/education/weighted_sum/SparseReshape2linear/linear_model/education/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/education/weighted_sum/Gather_2GatherAlinear/linear_model/education/weighted_sum/SparseReshape/Identity2linear/linear_model/education/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
 
3linear/linear_model/education/weighted_sum/IdentityIdentity:linear/linear_model/education/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Dlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
­
Rlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows3linear/linear_model/education/weighted_sum/Gather_13linear/linear_model/education/weighted_sum/Gather_23linear/linear_model/education/weighted_sum/IdentityDlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ї
Vlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Љ
Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Љ
Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
п
Plinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceRlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsVlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stackXlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Xlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
о
Glinear/linear_model/education/weighted_sum/embedding_lookup_sparse/CastCastPlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
ѕ
Ilinear/linear_model/education/weighted_sum/embedding_lookup_sparse/UniqueUniqueTlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ќ
Slinear/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookupGather1linear/linear_model/education/weights/part_0/readIlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*?
_class5
31loc:@linear/linear_model/education/weights/part_0*'
_output_shapes
:џџџџџџџџџ
џ
Blinear/linear_model/education/weighted_sum/embedding_lookup_sparseSparseSegmentSumSlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/embedding_lookupKlinear/linear_model/education/weighted_sum/embedding_lookup_sparse/Unique:1Glinear/linear_model/education/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

:linear/linear_model/education/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:

4linear/linear_model/education/weighted_sum/Reshape_1ReshapeTlinear/linear_model/education/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2:linear/linear_model/education/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

В
0linear/linear_model/education/weighted_sum/ShapeShapeBlinear/linear_model/education/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

>linear/linear_model/education/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

@linear/linear_model/education/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

@linear/linear_model/education/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
а
8linear/linear_model/education/weighted_sum/strided_sliceStridedSlice0linear/linear_model/education/weighted_sum/Shape>linear/linear_model/education/weighted_sum/strided_slice/stack@linear/linear_model/education/weighted_sum/strided_slice/stack_1@linear/linear_model/education/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
t
2linear/linear_model/education/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
р
0linear/linear_model/education/weighted_sum/stackPack2linear/linear_model/education/weighted_sum/stack/08linear/linear_model/education/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
ь
/linear/linear_model/education/weighted_sum/TileTile4linear/linear_model/education/weighted_sum/Reshape_10linear/linear_model/education/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
И
5linear/linear_model/education/weighted_sum/zeros_like	ZerosLikeBlinear/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

*linear/linear_model/education/weighted_sumSelect/linear/linear_model/education/weighted_sum/Tile5linear/linear_model/education/weighted_sum/zeros_likeBlinear/linear_model/education/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

1linear/linear_model/education/weighted_sum/Cast_1Cast-linear/linear_model/education/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

8linear/linear_model/education/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

7linear/linear_model/education/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

2linear/linear_model/education/weighted_sum/Slice_1Slice1linear/linear_model/education/weighted_sum/Cast_18linear/linear_model/education/weighted_sum/Slice_1/begin7linear/linear_model/education/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:

2linear/linear_model/education/weighted_sum/Shape_1Shape*linear/linear_model/education/weighted_sum*
out_type0*
T0*
_output_shapes
:

8linear/linear_model/education/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

7linear/linear_model/education/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

2linear/linear_model/education/weighted_sum/Slice_2Slice2linear/linear_model/education/weighted_sum/Shape_18linear/linear_model/education/weighted_sum/Slice_2/begin7linear/linear_model/education/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
x
6linear/linear_model/education/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 

1linear/linear_model/education/weighted_sum/concatConcatV22linear/linear_model/education/weighted_sum/Slice_12linear/linear_model/education/weighted_sum/Slice_26linear/linear_model/education/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
о
4linear/linear_model/education/weighted_sum/Reshape_2Reshape*linear/linear_model/education/weighted_sum1linear/linear_model/education/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

6linear/linear_model/education_X_occupation/SparseCrossSparseCross(linear/linear_model/education/ExpandDimsClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2*
internal_type0*
dense_types
2*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
out_type0	*
N *
num_bucketsN*
hash_keyўпђзь*
sparse_types
 *
hashed_output(
Ћ
5linear/linear_model/education_X_occupation/Shape/CastCast8linear/linear_model/education_X_occupation/SparseCross:2*

DstT0*

SrcT0	*
_output_shapes
:

>linear/linear_model/education_X_occupation/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

@linear/linear_model/education_X_occupation/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

@linear/linear_model/education_X_occupation/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
е
8linear/linear_model/education_X_occupation/strided_sliceStridedSlice5linear/linear_model/education_X_occupation/Shape/Cast>linear/linear_model/education_X_occupation/strided_slice/stack@linear/linear_model/education_X_occupation/strided_slice/stack_1@linear/linear_model/education_X_occupation/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
~
3linear/linear_model/education_X_occupation/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
т
1linear/linear_model/education_X_occupation/Cast/xPack8linear/linear_model/education_X_occupation/strided_slice3linear/linear_model/education_X_occupation/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

/linear/linear_model/education_X_occupation/CastCast1linear/linear_model/education_X_occupation/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:

8linear/linear_model/education_X_occupation/SparseReshapeSparseReshape6linear/linear_model/education_X_occupation/SparseCross8linear/linear_model/education_X_occupation/SparseCross:2/linear/linear_model/education_X_occupation/Cast*-
_output_shapes
:џџџџџџџџџ:
Е
Alinear/linear_model/education_X_occupation/SparseReshape/IdentityIdentity8linear/linear_model/education_X_occupation/SparseCross:1*
T0	*#
_output_shapes
:џџџџџџџџџ
№
Klinear/linear_model/education_X_occupation/weights/part_0/Initializer/zerosConst*
dtype0*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
valueB	N*    *
_output_shapes
:	N
§
9linear/linear_model/education_X_occupation/weights/part_0
VariableV2*
	container *
_output_shapes
:	N*
dtype0*
shape:	N*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
shared_name 
ѓ
@linear/linear_model/education_X_occupation/weights/part_0/AssignAssign9linear/linear_model/education_X_occupation/weights/part_0Klinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros*
validate_shape(*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
use_locking(*
T0*
_output_shapes
:	N
§
>linear/linear_model/education_X_occupation/weights/part_0/readIdentity9linear/linear_model/education_X_occupation/weights/part_0*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
T0*
_output_shapes
:	N

Clinear/linear_model/education_X_occupation/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

Blinear/linear_model/education_X_occupation/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Н
=linear/linear_model/education_X_occupation/weighted_sum/SliceSlice:linear/linear_model/education_X_occupation/SparseReshape:1Clinear/linear_model/education_X_occupation/weighted_sum/Slice/beginBlinear/linear_model/education_X_occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

=linear/linear_model/education_X_occupation/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:

<linear/linear_model/education_X_occupation/weighted_sum/ProdProd=linear/linear_model/education_X_occupation/weighted_sum/Slice=linear/linear_model/education_X_occupation/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

Flinear/linear_model/education_X_occupation/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 

>linear/linear_model/education_X_occupation/weighted_sum/GatherGather:linear/linear_model/education_X_occupation/SparseReshape:1Flinear/linear_model/education_X_occupation/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ў
>linear/linear_model/education_X_occupation/weighted_sum/Cast/xPack<linear/linear_model/education_X_occupation/weighted_sum/Prod>linear/linear_model/education_X_occupation/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:
Л
Elinear/linear_model/education_X_occupation/weighted_sum/SparseReshapeSparseReshape8linear/linear_model/education_X_occupation/SparseReshape:linear/linear_model/education_X_occupation/SparseReshape:1>linear/linear_model/education_X_occupation/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Ы
Nlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape/IdentityIdentityAlinear/linear_model/education_X_occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Flinear/linear_model/education_X_occupation/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

Dlinear/linear_model/education_X_occupation/weighted_sum/GreaterEqualGreaterEqualNlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape/IdentityFlinear/linear_model/education_X_occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Е
=linear/linear_model/education_X_occupation/weighted_sum/WhereWhereDlinear/linear_model/education_X_occupation/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/education_X_occupation/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

?linear/linear_model/education_X_occupation/weighted_sum/ReshapeReshape=linear/linear_model/education_X_occupation/weighted_sum/WhereElinear/linear_model/education_X_occupation/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	
В
@linear/linear_model/education_X_occupation/weighted_sum/Gather_1GatherElinear/linear_model/education_X_occupation/weighted_sum/SparseReshape?linear/linear_model/education_X_occupation/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ
З
@linear/linear_model/education_X_occupation/weighted_sum/Gather_2GatherNlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape/Identity?linear/linear_model/education_X_occupation/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
К
@linear/linear_model/education_X_occupation/weighted_sum/IdentityIdentityGlinear/linear_model/education_X_occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Qlinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ю
_linear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows@linear/linear_model/education_X_occupation/weighted_sum/Gather_1@linear/linear_model/education_X_occupation/weighted_sum/Gather_2@linear/linear_model/education_X_occupation/weighted_sum/IdentityQlinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Д
clinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ж
elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ж
elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
 
]linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlice_linear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsclinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackelinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1elinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ј
Tlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/CastCast]linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ

Vlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/UniqueUniquealinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
А
`linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGather>linear/linear_model/education_X_occupation/weights/part_0/readVlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Г
Olinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSum`linear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupXlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/Unique:1Tlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

Glinear/linear_model/education_X_occupation/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
И
Alinear/linear_model/education_X_occupation/weighted_sum/Reshape_1Reshapealinear/linear_model/education_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Glinear/linear_model/education_X_occupation/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Ь
=linear/linear_model/education_X_occupation/weighted_sum/ShapeShapeOlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Klinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Mlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Mlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/education_X_occupation/weighted_sum/strided_sliceStridedSlice=linear/linear_model/education_X_occupation/weighted_sum/ShapeKlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stackMlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_1Mlinear/linear_model/education_X_occupation/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

?linear/linear_model/education_X_occupation/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 

=linear/linear_model/education_X_occupation/weighted_sum/stackPack?linear/linear_model/education_X_occupation/weighted_sum/stack/0Elinear/linear_model/education_X_occupation/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:

<linear/linear_model/education_X_occupation/weighted_sum/TileTileAlinear/linear_model/education_X_occupation/weighted_sum/Reshape_1=linear/linear_model/education_X_occupation/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
в
Blinear/linear_model/education_X_occupation/weighted_sum/zeros_like	ZerosLikeOlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
7linear/linear_model/education_X_occupation/weighted_sumSelect<linear/linear_model/education_X_occupation/weighted_sum/TileBlinear/linear_model/education_X_occupation/weighted_sum/zeros_likeOlinear/linear_model/education_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ж
>linear/linear_model/education_X_occupation/weighted_sum/Cast_1Cast:linear/linear_model/education_X_occupation/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

Elinear/linear_model/education_X_occupation/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

Dlinear/linear_model/education_X_occupation/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ч
?linear/linear_model/education_X_occupation/weighted_sum/Slice_1Slice>linear/linear_model/education_X_occupation/weighted_sum/Cast_1Elinear/linear_model/education_X_occupation/weighted_sum/Slice_1/beginDlinear/linear_model/education_X_occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ж
?linear/linear_model/education_X_occupation/weighted_sum/Shape_1Shape7linear/linear_model/education_X_occupation/weighted_sum*
out_type0*
T0*
_output_shapes
:

Elinear/linear_model/education_X_occupation/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

Dlinear/linear_model/education_X_occupation/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ш
?linear/linear_model/education_X_occupation/weighted_sum/Slice_2Slice?linear/linear_model/education_X_occupation/weighted_sum/Shape_1Elinear/linear_model/education_X_occupation/weighted_sum/Slice_2/beginDlinear/linear_model/education_X_occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Clinear/linear_model/education_X_occupation/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ы
>linear/linear_model/education_X_occupation/weighted_sum/concatConcatV2?linear/linear_model/education_X_occupation/weighted_sum/Slice_1?linear/linear_model/education_X_occupation/weighted_sum/Slice_2Clinear/linear_model/education_X_occupation/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:

Alinear/linear_model/education_X_occupation/weighted_sum/Reshape_2Reshape7linear/linear_model/education_X_occupation/weighted_sum>linear/linear_model/education_X_occupation/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
t
)linear/linear_model/gender/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Љ
%linear/linear_model/gender/ExpandDims
ExpandDimsPlaceholder)linear/linear_model/gender/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ

0linear/linear_model/gender/to_sparse_input/ShapeShape%linear/linear_model/gender/ExpandDims*
out_type0*
T0*
_output_shapes
:

/linear/linear_model/gender/to_sparse_input/CastCast0linear/linear_model/gender/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
t
3linear/linear_model/gender/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Э
3linear/linear_model/gender/to_sparse_input/NotEqualNotEqual%linear/linear_model/gender/ExpandDims3linear/linear_model/gender/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

0linear/linear_model/gender/to_sparse_input/WhereWhere3linear/linear_model/gender/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

8linear/linear_model/gender/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
к
2linear/linear_model/gender/to_sparse_input/ReshapeReshape%linear/linear_model/gender/ExpandDims8linear/linear_model/gender/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

>linear/linear_model/gender/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

@linear/linear_model/gender/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

@linear/linear_model/gender/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
н
8linear/linear_model/gender/to_sparse_input/strided_sliceStridedSlice0linear/linear_model/gender/to_sparse_input/Where>linear/linear_model/gender/to_sparse_input/strided_slice/stack@linear/linear_model/gender/to_sparse_input/strided_slice/stack_1@linear/linear_model/gender/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

@linear/linear_model/gender/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Blinear/linear_model/gender/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Blinear/linear_model/gender/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
щ
:linear/linear_model/gender/to_sparse_input/strided_slice_1StridedSlice0linear/linear_model/gender/to_sparse_input/Where@linear/linear_model/gender/to_sparse_input/strided_slice_1/stackBlinear/linear_model/gender/to_sparse_input/strided_slice_1/stack_1Blinear/linear_model/gender/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
Ї
2linear/linear_model/gender/to_sparse_input/unstackUnpack/linear/linear_model/gender/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
Ј
0linear/linear_model/gender/to_sparse_input/stackPack4linear/linear_model/gender/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
е
.linear/linear_model/gender/to_sparse_input/MulMul:linear/linear_model/gender/to_sparse_input/strided_slice_10linear/linear_model/gender/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

@linear/linear_model/gender/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ђ
.linear/linear_model/gender/to_sparse_input/SumSum.linear/linear_model/gender/to_sparse_input/Mul@linear/linear_model/gender/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
Э
.linear/linear_model/gender/to_sparse_input/AddAdd8linear/linear_model/gender/to_sparse_input/strided_slice.linear/linear_model/gender/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ
ћ
1linear/linear_model/gender/to_sparse_input/GatherGather2linear/linear_model/gender/to_sparse_input/Reshape.linear/linear_model/gender/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ

.linear/linear_model/gender/gender_lookup/ConstConst*
dtype0*#
valueBB FemaleB Male*
_output_shapes
:
o
-linear/linear_model/gender/gender_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
v
4linear/linear_model/gender/gender_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
v
4linear/linear_model/gender/gender_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
њ
.linear/linear_model/gender/gender_lookup/rangeRange4linear/linear_model/gender/gender_lookup/range/start-linear/linear_model/gender/gender_lookup/Size4linear/linear_model/gender/gender_lookup/range/delta*

Tidx0*
_output_shapes
:

0linear/linear_model/gender/gender_lookup/ToInt64Cast.linear/linear_model/gender/gender_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
П
3linear/linear_model/gender/gender_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 

9linear/linear_model/gender/gender_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

>linear/linear_model/gender/gender_lookup/hash_table/table_initInitializeTableV23linear/linear_model/gender/gender_lookup/hash_table.linear/linear_model/gender/gender_lookup/Const0linear/linear_model/gender/gender_lookup/ToInt64*

Tkey0*

Tval0	
 
,linear/linear_model/gender/hash_table_LookupLookupTableFindV23linear/linear_model/gender/gender_lookup/hash_table1linear/linear_model/gender/to_sparse_input/Gather9linear/linear_model/gender/gender_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ

%linear/linear_model/gender/Shape/CastCast/linear/linear_model/gender/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
x
.linear/linear_model/gender/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
z
0linear/linear_model/gender/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
z
0linear/linear_model/gender/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

(linear/linear_model/gender/strided_sliceStridedSlice%linear/linear_model/gender/Shape/Cast.linear/linear_model/gender/strided_slice/stack0linear/linear_model/gender/strided_slice/stack_10linear/linear_model/gender/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
n
#linear/linear_model/gender/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
В
!linear/linear_model/gender/Cast/xPack(linear/linear_model/gender/strided_slice#linear/linear_model/gender/Cast/x/1*
N*

axis *
T0*
_output_shapes
:
~
linear/linear_model/gender/CastCast!linear/linear_model/gender/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
ь
(linear/linear_model/gender/SparseReshapeSparseReshape0linear/linear_model/gender/to_sparse_input/Where/linear/linear_model/gender/to_sparse_input/Castlinear/linear_model/gender/Cast*-
_output_shapes
:џџџџџџџџџ:

1linear/linear_model/gender/SparseReshape/IdentityIdentity,linear/linear_model/gender/hash_table_Lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
Ю
;linear/linear_model/gender/weights/part_0/Initializer/zerosConst*
dtype0*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*
valueB*    *
_output_shapes

:
л
)linear/linear_model/gender/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*
shared_name 
В
0linear/linear_model/gender/weights/part_0/AssignAssign)linear/linear_model/gender/weights/part_0;linear/linear_model/gender/weights/part_0/Initializer/zeros*
validate_shape(*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Ь
.linear/linear_model/gender/weights/part_0/readIdentity)linear/linear_model/gender/weights/part_0*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*
T0*
_output_shapes

:
}
3linear/linear_model/gender/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
|
2linear/linear_model/gender/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
§
-linear/linear_model/gender/weighted_sum/SliceSlice*linear/linear_model/gender/SparseReshape:13linear/linear_model/gender/weighted_sum/Slice/begin2linear/linear_model/gender/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
w
-linear/linear_model/gender/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
а
,linear/linear_model/gender/weighted_sum/ProdProd-linear/linear_model/gender/weighted_sum/Slice-linear/linear_model/gender/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
x
6linear/linear_model/gender/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ы
.linear/linear_model/gender/weighted_sum/GatherGather*linear/linear_model/gender/SparseReshape:16linear/linear_model/gender/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
Ю
.linear/linear_model/gender/weighted_sum/Cast/xPack,linear/linear_model/gender/weighted_sum/Prod.linear/linear_model/gender/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:
ћ
5linear/linear_model/gender/weighted_sum/SparseReshapeSparseReshape(linear/linear_model/gender/SparseReshape*linear/linear_model/gender/SparseReshape:1.linear/linear_model/gender/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Ћ
>linear/linear_model/gender/weighted_sum/SparseReshape/IdentityIdentity1linear/linear_model/gender/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
x
6linear/linear_model/gender/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ъ
4linear/linear_model/gender/weighted_sum/GreaterEqualGreaterEqual>linear/linear_model/gender/weighted_sum/SparseReshape/Identity6linear/linear_model/gender/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ

-linear/linear_model/gender/weighted_sum/WhereWhere4linear/linear_model/gender/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

5linear/linear_model/gender/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
м
/linear/linear_model/gender/weighted_sum/ReshapeReshape-linear/linear_model/gender/weighted_sum/Where5linear/linear_model/gender/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

0linear/linear_model/gender/weighted_sum/Gather_1Gather5linear/linear_model/gender/weighted_sum/SparseReshape/linear/linear_model/gender/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

0linear/linear_model/gender/weighted_sum/Gather_2Gather>linear/linear_model/gender/weighted_sum/SparseReshape/Identity/linear/linear_model/gender/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ

0linear/linear_model/gender/weighted_sum/IdentityIdentity7linear/linear_model/gender/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Alinear/linear_model/gender/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 

Olinear/linear_model/gender/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows0linear/linear_model/gender/weighted_sum/Gather_10linear/linear_model/gender/weighted_sum/Gather_20linear/linear_model/gender/weighted_sum/IdentityAlinear/linear_model/gender/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Є
Slinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
І
Ulinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
І
Ulinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
а
Mlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceOlinear/linear_model/gender/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice/stackUlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Ulinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
и
Dlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/CastCastMlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
я
Flinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/UniqueUniqueQlinear/linear_model/gender/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
№
Plinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/embedding_lookupGather.linear/linear_model/gender/weights/part_0/readFlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*'
_output_shapes
:џџџџџџџџџ
ѓ
?linear/linear_model/gender/weighted_sum/embedding_lookup_sparseSparseSegmentSumPlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/embedding_lookupHlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/Unique:1Dlinear/linear_model/gender/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

7linear/linear_model/gender/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:

1linear/linear_model/gender/weighted_sum/Reshape_1ReshapeQlinear/linear_model/gender/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:27linear/linear_model/gender/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Ќ
-linear/linear_model/gender/weighted_sum/ShapeShape?linear/linear_model/gender/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

;linear/linear_model/gender/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

=linear/linear_model/gender/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

=linear/linear_model/gender/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
С
5linear/linear_model/gender/weighted_sum/strided_sliceStridedSlice-linear/linear_model/gender/weighted_sum/Shape;linear/linear_model/gender/weighted_sum/strided_slice/stack=linear/linear_model/gender/weighted_sum/strided_slice/stack_1=linear/linear_model/gender/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
q
/linear/linear_model/gender/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
з
-linear/linear_model/gender/weighted_sum/stackPack/linear/linear_model/gender/weighted_sum/stack/05linear/linear_model/gender/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
у
,linear/linear_model/gender/weighted_sum/TileTile1linear/linear_model/gender/weighted_sum/Reshape_1-linear/linear_model/gender/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
В
2linear/linear_model/gender/weighted_sum/zeros_like	ZerosLike?linear/linear_model/gender/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

'linear/linear_model/gender/weighted_sumSelect,linear/linear_model/gender/weighted_sum/Tile2linear/linear_model/gender/weighted_sum/zeros_like?linear/linear_model/gender/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

.linear/linear_model/gender/weighted_sum/Cast_1Cast*linear/linear_model/gender/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

5linear/linear_model/gender/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
~
4linear/linear_model/gender/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

/linear/linear_model/gender/weighted_sum/Slice_1Slice.linear/linear_model/gender/weighted_sum/Cast_15linear/linear_model/gender/weighted_sum/Slice_1/begin4linear/linear_model/gender/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:

/linear/linear_model/gender/weighted_sum/Shape_1Shape'linear/linear_model/gender/weighted_sum*
out_type0*
T0*
_output_shapes
:

5linear/linear_model/gender/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

4linear/linear_model/gender/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

/linear/linear_model/gender/weighted_sum/Slice_2Slice/linear/linear_model/gender/weighted_sum/Shape_15linear/linear_model/gender/weighted_sum/Slice_2/begin4linear/linear_model/gender/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
u
3linear/linear_model/gender/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 

.linear/linear_model/gender/weighted_sum/concatConcatV2/linear/linear_model/gender/weighted_sum/Slice_1/linear/linear_model/gender/weighted_sum/Slice_23linear/linear_model/gender/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
е
1linear/linear_model/gender/weighted_sum/Reshape_2Reshape'linear/linear_model/gender/weighted_sum.linear/linear_model/gender/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
|
1linear/linear_model/marital_status/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Л
-linear/linear_model/marital_status/ExpandDims
ExpandDimsPlaceholder_31linear/linear_model/marital_status/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
8linear/linear_model/marital_status/to_sparse_input/ShapeShape-linear/linear_model/marital_status/ExpandDims*
out_type0*
T0*
_output_shapes
:
­
7linear/linear_model/marital_status/to_sparse_input/CastCast8linear/linear_model/marital_status/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
|
;linear/linear_model/marital_status/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
х
;linear/linear_model/marital_status/to_sparse_input/NotEqualNotEqual-linear/linear_model/marital_status/ExpandDims;linear/linear_model/marital_status/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
8linear/linear_model/marital_status/to_sparse_input/WhereWhere;linear/linear_model/marital_status/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

@linear/linear_model/marital_status/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ђ
:linear/linear_model/marital_status/to_sparse_input/ReshapeReshape-linear/linear_model/marital_status/ExpandDims@linear/linear_model/marital_status/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Flinear/linear_model/marital_status/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

Hlinear/linear_model/marital_status/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Hlinear/linear_model/marital_status/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

@linear/linear_model/marital_status/to_sparse_input/strided_sliceStridedSlice8linear/linear_model/marital_status/to_sparse_input/WhereFlinear/linear_model/marital_status/to_sparse_input/strided_slice/stackHlinear/linear_model/marital_status/to_sparse_input/strided_slice/stack_1Hlinear/linear_model/marital_status/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Hlinear/linear_model/marital_status/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Jlinear/linear_model/marital_status/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Jlinear/linear_model/marital_status/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

Blinear/linear_model/marital_status/to_sparse_input/strided_slice_1StridedSlice8linear/linear_model/marital_status/to_sparse_input/WhereHlinear/linear_model/marital_status/to_sparse_input/strided_slice_1/stackJlinear/linear_model/marital_status/to_sparse_input/strided_slice_1/stack_1Jlinear/linear_model/marital_status/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
З
:linear/linear_model/marital_status/to_sparse_input/unstackUnpack7linear/linear_model/marital_status/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
И
8linear/linear_model/marital_status/to_sparse_input/stackPack<linear/linear_model/marital_status/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
э
6linear/linear_model/marital_status/to_sparse_input/MulMulBlinear/linear_model/marital_status/to_sparse_input/strided_slice_18linear/linear_model/marital_status/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

Hlinear/linear_model/marital_status/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:

6linear/linear_model/marital_status/to_sparse_input/SumSum6linear/linear_model/marital_status/to_sparse_input/MulHlinear/linear_model/marital_status/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
х
6linear/linear_model/marital_status/to_sparse_input/AddAdd@linear/linear_model/marital_status/to_sparse_input/strided_slice6linear/linear_model/marital_status/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ

9linear/linear_model/marital_status/to_sparse_input/GatherGather:linear/linear_model/marital_status/to_sparse_input/Reshape6linear/linear_model/marital_status/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
ј
>linear/linear_model/marital_status/marital_status_lookup/ConstConst*
dtype0*
value|BzB Married-civ-spouseB	 DivorcedB Married-spouse-absentB Never-marriedB
 SeparatedB Married-AF-spouseB Widowed*
_output_shapes
:

=linear/linear_model/marital_status/marital_status_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 

Dlinear/linear_model/marital_status/marital_status_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Dlinear/linear_model/marital_status/marital_status_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
К
>linear/linear_model/marital_status/marital_status_lookup/rangeRangeDlinear/linear_model/marital_status/marital_status_lookup/range/start=linear/linear_model/marital_status/marital_status_lookup/SizeDlinear/linear_model/marital_status/marital_status_lookup/range/delta*

Tidx0*
_output_shapes
:
М
@linear/linear_model/marital_status/marital_status_lookup/ToInt64Cast>linear/linear_model/marital_status/marital_status_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
Я
Clinear/linear_model/marital_status/marital_status_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 

Ilinear/linear_model/marital_status/marital_status_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
Т
Nlinear/linear_model/marital_status/marital_status_lookup/hash_table/table_initInitializeTableV2Clinear/linear_model/marital_status/marital_status_lookup/hash_table>linear/linear_model/marital_status/marital_status_lookup/Const@linear/linear_model/marital_status/marital_status_lookup/ToInt64*

Tkey0*

Tval0	
а
4linear/linear_model/marital_status/hash_table_LookupLookupTableFindV2Clinear/linear_model/marital_status/marital_status_lookup/hash_table9linear/linear_model/marital_status/to_sparse_input/GatherIlinear/linear_model/marital_status/marital_status_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
Ђ
-linear/linear_model/marital_status/Shape/CastCast7linear/linear_model/marital_status/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:

6linear/linear_model/marital_status/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear_model/marital_status/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

8linear/linear_model/marital_status/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
­
0linear/linear_model/marital_status/strided_sliceStridedSlice-linear/linear_model/marital_status/Shape/Cast6linear/linear_model/marital_status/strided_slice/stack8linear/linear_model/marital_status/strided_slice/stack_18linear/linear_model/marital_status/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
v
+linear/linear_model/marital_status/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ъ
)linear/linear_model/marital_status/Cast/xPack0linear/linear_model/marital_status/strided_slice+linear/linear_model/marital_status/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

'linear/linear_model/marital_status/CastCast)linear/linear_model/marital_status/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:

0linear/linear_model/marital_status/SparseReshapeSparseReshape8linear/linear_model/marital_status/to_sparse_input/Where7linear/linear_model/marital_status/to_sparse_input/Cast'linear/linear_model/marital_status/Cast*-
_output_shapes
:џџџџџџџџџ:
Љ
9linear/linear_model/marital_status/SparseReshape/IdentityIdentity4linear/linear_model/marital_status/hash_table_Lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
о
Clinear/linear_model/marital_status/weights/part_0/Initializer/zerosConst*
dtype0*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
valueB*    *
_output_shapes

:
ы
1linear/linear_model/marital_status/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
shared_name 
в
8linear/linear_model/marital_status/weights/part_0/AssignAssign1linear/linear_model/marital_status/weights/part_0Clinear/linear_model/marital_status/weights/part_0/Initializer/zeros*
validate_shape(*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ф
6linear/linear_model/marital_status/weights/part_0/readIdentity1linear/linear_model/marital_status/weights/part_0*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
T0*
_output_shapes

:

;linear/linear_model/marital_status/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear_model/marital_status/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear_model/marital_status/weighted_sum/SliceSlice2linear/linear_model/marital_status/SparseReshape:1;linear/linear_model/marital_status/weighted_sum/Slice/begin:linear/linear_model/marital_status/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

5linear/linear_model/marital_status/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ш
4linear/linear_model/marital_status/weighted_sum/ProdProd5linear/linear_model/marital_status/weighted_sum/Slice5linear/linear_model/marital_status/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

>linear/linear_model/marital_status/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 

6linear/linear_model/marital_status/weighted_sum/GatherGather2linear/linear_model/marital_status/SparseReshape:1>linear/linear_model/marital_status/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ц
6linear/linear_model/marital_status/weighted_sum/Cast/xPack4linear/linear_model/marital_status/weighted_sum/Prod6linear/linear_model/marital_status/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

=linear/linear_model/marital_status/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/marital_status/SparseReshape2linear/linear_model/marital_status/SparseReshape:16linear/linear_model/marital_status/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Л
Flinear/linear_model/marital_status/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/marital_status/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

>linear/linear_model/marital_status/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

<linear/linear_model/marital_status/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/marital_status/weighted_sum/SparseReshape/Identity>linear/linear_model/marital_status/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
5linear/linear_model/marital_status/weighted_sum/WhereWhere<linear/linear_model/marital_status/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

=linear/linear_model/marital_status/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
є
7linear/linear_model/marital_status/weighted_sum/ReshapeReshape5linear/linear_model/marital_status/weighted_sum/Where=linear/linear_model/marital_status/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

8linear/linear_model/marital_status/weighted_sum/Gather_1Gather=linear/linear_model/marital_status/weighted_sum/SparseReshape7linear/linear_model/marital_status/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

8linear/linear_model/marital_status/weighted_sum/Gather_2GatherFlinear/linear_model/marital_status/weighted_sum/SparseReshape/Identity7linear/linear_model/marital_status/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Њ
8linear/linear_model/marital_status/weighted_sum/IdentityIdentity?linear/linear_model/marital_status/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Ilinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ц
Wlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows8linear/linear_model/marital_status/weighted_sum/Gather_18linear/linear_model/marital_status/weighted_sum/Gather_28linear/linear_model/marital_status/weighted_sum/IdentityIlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ќ
[linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ў
]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ў
]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
Ulinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ш
Llinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
џ
Nlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Xlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/embedding_lookupGather6linear/linear_model/marital_status/weights/part_0/readNlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*'
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

?linear/linear_model/marital_status/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
 
9linear/linear_model/marital_status/weighted_sum/Reshape_1ReshapeYlinear/linear_model/marital_status/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/marital_status/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

М
5linear/linear_model/marital_status/weighted_sum/ShapeShapeGlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Clinear/linear_model/marital_status/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/marital_status/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/marital_status/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
щ
=linear/linear_model/marital_status/weighted_sum/strided_sliceStridedSlice5linear/linear_model/marital_status/weighted_sum/ShapeClinear/linear_model/marital_status/weighted_sum/strided_slice/stackElinear/linear_model/marital_status/weighted_sum/strided_slice/stack_1Elinear/linear_model/marital_status/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
y
7linear/linear_model/marital_status/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
я
5linear/linear_model/marital_status/weighted_sum/stackPack7linear/linear_model/marital_status/weighted_sum/stack/0=linear/linear_model/marital_status/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
ћ
4linear/linear_model/marital_status/weighted_sum/TileTile9linear/linear_model/marital_status/weighted_sum/Reshape_15linear/linear_model/marital_status/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Т
:linear/linear_model/marital_status/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
/linear/linear_model/marital_status/weighted_sumSelect4linear/linear_model/marital_status/weighted_sum/Tile:linear/linear_model/marital_status/weighted_sum/zeros_likeGlinear/linear_model/marital_status/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
6linear/linear_model/marital_status/weighted_sum/Cast_1Cast2linear/linear_model/marital_status/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

=linear/linear_model/marital_status/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

<linear/linear_model/marital_status/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ї
7linear/linear_model/marital_status/weighted_sum/Slice_1Slice6linear/linear_model/marital_status/weighted_sum/Cast_1=linear/linear_model/marital_status/weighted_sum/Slice_1/begin<linear/linear_model/marital_status/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
І
7linear/linear_model/marital_status/weighted_sum/Shape_1Shape/linear/linear_model/marital_status/weighted_sum*
out_type0*
T0*
_output_shapes
:

=linear/linear_model/marital_status/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

<linear/linear_model/marital_status/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ј
7linear/linear_model/marital_status/weighted_sum/Slice_2Slice7linear/linear_model/marital_status/weighted_sum/Shape_1=linear/linear_model/marital_status/weighted_sum/Slice_2/begin<linear/linear_model/marital_status/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;linear/linear_model/marital_status/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ћ
6linear/linear_model/marital_status/weighted_sum/concatConcatV27linear/linear_model/marital_status/weighted_sum/Slice_17linear/linear_model/marital_status/weighted_sum/Slice_2;linear/linear_model/marital_status/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
э
9linear/linear_model/marital_status/weighted_sum/Reshape_2Reshape/linear/linear_model/marital_status/weighted_sum6linear/linear_model/marital_status/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
|
1linear/linear_model/native_country/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Л
-linear/linear_model/native_country/ExpandDims
ExpandDimsPlaceholder_71linear/linear_model/native_country/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
8linear/linear_model/native_country/to_sparse_input/ShapeShape-linear/linear_model/native_country/ExpandDims*
out_type0*
T0*
_output_shapes
:
­
7linear/linear_model/native_country/to_sparse_input/CastCast8linear/linear_model/native_country/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
|
;linear/linear_model/native_country/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
х
;linear/linear_model/native_country/to_sparse_input/NotEqualNotEqual-linear/linear_model/native_country/ExpandDims;linear/linear_model/native_country/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
Ї
8linear/linear_model/native_country/to_sparse_input/WhereWhere;linear/linear_model/native_country/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

@linear/linear_model/native_country/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ђ
:linear/linear_model/native_country/to_sparse_input/ReshapeReshape-linear/linear_model/native_country/ExpandDims@linear/linear_model/native_country/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Flinear/linear_model/native_country/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

Hlinear/linear_model/native_country/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Hlinear/linear_model/native_country/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

@linear/linear_model/native_country/to_sparse_input/strided_sliceStridedSlice8linear/linear_model/native_country/to_sparse_input/WhereFlinear/linear_model/native_country/to_sparse_input/strided_slice/stackHlinear/linear_model/native_country/to_sparse_input/strided_slice/stack_1Hlinear/linear_model/native_country/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Hlinear/linear_model/native_country/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Jlinear/linear_model/native_country/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Jlinear/linear_model/native_country/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

Blinear/linear_model/native_country/to_sparse_input/strided_slice_1StridedSlice8linear/linear_model/native_country/to_sparse_input/WhereHlinear/linear_model/native_country/to_sparse_input/strided_slice_1/stackJlinear/linear_model/native_country/to_sparse_input/strided_slice_1/stack_1Jlinear/linear_model/native_country/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
З
:linear/linear_model/native_country/to_sparse_input/unstackUnpack7linear/linear_model/native_country/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
И
8linear/linear_model/native_country/to_sparse_input/stackPack<linear/linear_model/native_country/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
э
6linear/linear_model/native_country/to_sparse_input/MulMulBlinear/linear_model/native_country/to_sparse_input/strided_slice_18linear/linear_model/native_country/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

Hlinear/linear_model/native_country/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:

6linear/linear_model/native_country/to_sparse_input/SumSum6linear/linear_model/native_country/to_sparse_input/MulHlinear/linear_model/native_country/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
х
6linear/linear_model/native_country/to_sparse_input/AddAdd@linear/linear_model/native_country/to_sparse_input/strided_slice6linear/linear_model/native_country/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ

9linear/linear_model/native_country/to_sparse_input/GatherGather:linear/linear_model/native_country/to_sparse_input/Reshape6linear/linear_model/native_country/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ж
)linear/linear_model/native_country/lookupStringToHashBucketFast9linear/linear_model/native_country/to_sparse_input/Gather*#
_output_shapes
:џџџџџџџџџ*
num_bucketsd
Ђ
-linear/linear_model/native_country/Shape/CastCast7linear/linear_model/native_country/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:

6linear/linear_model/native_country/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear_model/native_country/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

8linear/linear_model/native_country/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
­
0linear/linear_model/native_country/strided_sliceStridedSlice-linear/linear_model/native_country/Shape/Cast6linear/linear_model/native_country/strided_slice/stack8linear/linear_model/native_country/strided_slice/stack_18linear/linear_model/native_country/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
v
+linear/linear_model/native_country/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ъ
)linear/linear_model/native_country/Cast/xPack0linear/linear_model/native_country/strided_slice+linear/linear_model/native_country/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

'linear/linear_model/native_country/CastCast)linear/linear_model/native_country/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:

0linear/linear_model/native_country/SparseReshapeSparseReshape8linear/linear_model/native_country/to_sparse_input/Where7linear/linear_model/native_country/to_sparse_input/Cast'linear/linear_model/native_country/Cast*-
_output_shapes
:џџџџџџџџџ:

9linear/linear_model/native_country/SparseReshape/IdentityIdentity)linear/linear_model/native_country/lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
о
Clinear/linear_model/native_country/weights/part_0/Initializer/zerosConst*
dtype0*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*
valueBd*    *
_output_shapes

:d
ы
1linear/linear_model/native_country/weights/part_0
VariableV2*
	container *
_output_shapes

:d*
dtype0*
shape
:d*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*
shared_name 
в
8linear/linear_model/native_country/weights/part_0/AssignAssign1linear/linear_model/native_country/weights/part_0Clinear/linear_model/native_country/weights/part_0/Initializer/zeros*
validate_shape(*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*
use_locking(*
T0*
_output_shapes

:d
ф
6linear/linear_model/native_country/weights/part_0/readIdentity1linear/linear_model/native_country/weights/part_0*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*
T0*
_output_shapes

:d

;linear/linear_model/native_country/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear_model/native_country/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear_model/native_country/weighted_sum/SliceSlice2linear/linear_model/native_country/SparseReshape:1;linear/linear_model/native_country/weighted_sum/Slice/begin:linear/linear_model/native_country/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

5linear/linear_model/native_country/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ш
4linear/linear_model/native_country/weighted_sum/ProdProd5linear/linear_model/native_country/weighted_sum/Slice5linear/linear_model/native_country/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

>linear/linear_model/native_country/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 

6linear/linear_model/native_country/weighted_sum/GatherGather2linear/linear_model/native_country/SparseReshape:1>linear/linear_model/native_country/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ц
6linear/linear_model/native_country/weighted_sum/Cast/xPack4linear/linear_model/native_country/weighted_sum/Prod6linear/linear_model/native_country/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

=linear/linear_model/native_country/weighted_sum/SparseReshapeSparseReshape0linear/linear_model/native_country/SparseReshape2linear/linear_model/native_country/SparseReshape:16linear/linear_model/native_country/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Л
Flinear/linear_model/native_country/weighted_sum/SparseReshape/IdentityIdentity9linear/linear_model/native_country/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

>linear/linear_model/native_country/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

<linear/linear_model/native_country/weighted_sum/GreaterEqualGreaterEqualFlinear/linear_model/native_country/weighted_sum/SparseReshape/Identity>linear/linear_model/native_country/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
5linear/linear_model/native_country/weighted_sum/WhereWhere<linear/linear_model/native_country/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

=linear/linear_model/native_country/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
є
7linear/linear_model/native_country/weighted_sum/ReshapeReshape5linear/linear_model/native_country/weighted_sum/Where=linear/linear_model/native_country/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

8linear/linear_model/native_country/weighted_sum/Gather_1Gather=linear/linear_model/native_country/weighted_sum/SparseReshape7linear/linear_model/native_country/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

8linear/linear_model/native_country/weighted_sum/Gather_2GatherFlinear/linear_model/native_country/weighted_sum/SparseReshape/Identity7linear/linear_model/native_country/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Њ
8linear/linear_model/native_country/weighted_sum/IdentityIdentity?linear/linear_model/native_country/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Ilinear/linear_model/native_country/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ц
Wlinear/linear_model/native_country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows8linear/linear_model/native_country/weighted_sum/Gather_18linear/linear_model/native_country/weighted_sum/Gather_28linear/linear_model/native_country/weighted_sum/IdentityIlinear/linear_model/native_country/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ќ
[linear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ў
]linear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ў
]linear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
Ulinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear_model/native_country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice/stack]linear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1]linear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ш
Llinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/CastCastUlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
џ
Nlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/UniqueUniqueYlinear/linear_model/native_country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Xlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/embedding_lookupGather6linear/linear_model/native_country/weights/part_0/readNlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*'
_output_shapes
:џџџџџџџџџ

Glinear/linear_model/native_country/weighted_sum/embedding_lookup_sparseSparseSegmentSumXlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/embedding_lookupPlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/Unique:1Llinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

?linear/linear_model/native_country/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
 
9linear/linear_model/native_country/weighted_sum/Reshape_1ReshapeYlinear/linear_model/native_country/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear_model/native_country/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

М
5linear/linear_model/native_country/weighted_sum/ShapeShapeGlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Clinear/linear_model/native_country/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/native_country/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/native_country/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
щ
=linear/linear_model/native_country/weighted_sum/strided_sliceStridedSlice5linear/linear_model/native_country/weighted_sum/ShapeClinear/linear_model/native_country/weighted_sum/strided_slice/stackElinear/linear_model/native_country/weighted_sum/strided_slice/stack_1Elinear/linear_model/native_country/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
y
7linear/linear_model/native_country/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
я
5linear/linear_model/native_country/weighted_sum/stackPack7linear/linear_model/native_country/weighted_sum/stack/0=linear/linear_model/native_country/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
ћ
4linear/linear_model/native_country/weighted_sum/TileTile9linear/linear_model/native_country/weighted_sum/Reshape_15linear/linear_model/native_country/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
Т
:linear/linear_model/native_country/weighted_sum/zeros_like	ZerosLikeGlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
/linear/linear_model/native_country/weighted_sumSelect4linear/linear_model/native_country/weighted_sum/Tile:linear/linear_model/native_country/weighted_sum/zeros_likeGlinear/linear_model/native_country/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
6linear/linear_model/native_country/weighted_sum/Cast_1Cast2linear/linear_model/native_country/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

=linear/linear_model/native_country/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

<linear/linear_model/native_country/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ї
7linear/linear_model/native_country/weighted_sum/Slice_1Slice6linear/linear_model/native_country/weighted_sum/Cast_1=linear/linear_model/native_country/weighted_sum/Slice_1/begin<linear/linear_model/native_country/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
І
7linear/linear_model/native_country/weighted_sum/Shape_1Shape/linear/linear_model/native_country/weighted_sum*
out_type0*
T0*
_output_shapes
:

=linear/linear_model/native_country/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

<linear/linear_model/native_country/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
Ј
7linear/linear_model/native_country/weighted_sum/Slice_2Slice7linear/linear_model/native_country/weighted_sum/Shape_1=linear/linear_model/native_country/weighted_sum/Slice_2/begin<linear/linear_model/native_country/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;linear/linear_model/native_country/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ћ
6linear/linear_model/native_country/weighted_sum/concatConcatV27linear/linear_model/native_country/weighted_sum/Slice_17linear/linear_model/native_country/weighted_sum/Slice_2;linear/linear_model/native_country/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
э
9linear/linear_model/native_country/weighted_sum/Reshape_2Reshape/linear/linear_model/native_country/weighted_sum6linear/linear_model/native_country/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

;linear/linear_model/native_country_X_occupation/SparseCrossSparseCross-linear/linear_model/native_country/ExpandDimsClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2*
internal_type0*
dense_types
2*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
out_type0	*
N *
num_bucketsN*
hash_keyўпђзь*
sparse_types
 *
hashed_output(
Е
:linear/linear_model/native_country_X_occupation/Shape/CastCast=linear/linear_model/native_country_X_occupation/SparseCross:2*

DstT0*

SrcT0	*
_output_shapes
:

Clinear/linear_model/native_country_X_occupation/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Elinear/linear_model/native_country_X_occupation/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Elinear/linear_model/native_country_X_occupation/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ю
=linear/linear_model/native_country_X_occupation/strided_sliceStridedSlice:linear/linear_model/native_country_X_occupation/Shape/CastClinear/linear_model/native_country_X_occupation/strided_slice/stackElinear/linear_model/native_country_X_occupation/strided_slice/stack_1Elinear/linear_model/native_country_X_occupation/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

8linear/linear_model/native_country_X_occupation/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
ё
6linear/linear_model/native_country_X_occupation/Cast/xPack=linear/linear_model/native_country_X_occupation/strided_slice8linear/linear_model/native_country_X_occupation/Cast/x/1*
N*

axis *
T0*
_output_shapes
:
Ј
4linear/linear_model/native_country_X_occupation/CastCast6linear/linear_model/native_country_X_occupation/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
Џ
=linear/linear_model/native_country_X_occupation/SparseReshapeSparseReshape;linear/linear_model/native_country_X_occupation/SparseCross=linear/linear_model/native_country_X_occupation/SparseCross:24linear/linear_model/native_country_X_occupation/Cast*-
_output_shapes
:џџџџџџџџџ:
П
Flinear/linear_model/native_country_X_occupation/SparseReshape/IdentityIdentity=linear/linear_model/native_country_X_occupation/SparseCross:1*
T0	*#
_output_shapes
:џџџџџџџџџ
њ
Plinear/linear_model/native_country_X_occupation/weights/part_0/Initializer/zerosConst*
dtype0*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*
valueB	N*    *
_output_shapes
:	N

>linear/linear_model/native_country_X_occupation/weights/part_0
VariableV2*
	container *
_output_shapes
:	N*
dtype0*
shape:	N*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*
shared_name 

Elinear/linear_model/native_country_X_occupation/weights/part_0/AssignAssign>linear/linear_model/native_country_X_occupation/weights/part_0Plinear/linear_model/native_country_X_occupation/weights/part_0/Initializer/zeros*
validate_shape(*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*
use_locking(*
T0*
_output_shapes
:	N

Clinear/linear_model/native_country_X_occupation/weights/part_0/readIdentity>linear/linear_model/native_country_X_occupation/weights/part_0*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*
T0*
_output_shapes
:	N

Hlinear/linear_model/native_country_X_occupation/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

Glinear/linear_model/native_country_X_occupation/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
б
Blinear/linear_model/native_country_X_occupation/weighted_sum/SliceSlice?linear/linear_model/native_country_X_occupation/SparseReshape:1Hlinear/linear_model/native_country_X_occupation/weighted_sum/Slice/beginGlinear/linear_model/native_country_X_occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Blinear/linear_model/native_country_X_occupation/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:

Alinear/linear_model/native_country_X_occupation/weighted_sum/ProdProdBlinear/linear_model/native_country_X_occupation/weighted_sum/SliceBlinear/linear_model/native_country_X_occupation/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

Klinear/linear_model/native_country_X_occupation/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Њ
Clinear/linear_model/native_country_X_occupation/weighted_sum/GatherGather?linear/linear_model/native_country_X_occupation/SparseReshape:1Klinear/linear_model/native_country_X_occupation/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 

Clinear/linear_model/native_country_X_occupation/weighted_sum/Cast/xPackAlinear/linear_model/native_country_X_occupation/weighted_sum/ProdClinear/linear_model/native_country_X_occupation/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:
Я
Jlinear/linear_model/native_country_X_occupation/weighted_sum/SparseReshapeSparseReshape=linear/linear_model/native_country_X_occupation/SparseReshape?linear/linear_model/native_country_X_occupation/SparseReshape:1Clinear/linear_model/native_country_X_occupation/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
е
Slinear/linear_model/native_country_X_occupation/weighted_sum/SparseReshape/IdentityIdentityFlinear/linear_model/native_country_X_occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Klinear/linear_model/native_country_X_occupation/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Љ
Ilinear/linear_model/native_country_X_occupation/weighted_sum/GreaterEqualGreaterEqualSlinear/linear_model/native_country_X_occupation/weighted_sum/SparseReshape/IdentityKlinear/linear_model/native_country_X_occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
П
Blinear/linear_model/native_country_X_occupation/weighted_sum/WhereWhereIlinear/linear_model/native_country_X_occupation/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/native_country_X_occupation/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

Dlinear/linear_model/native_country_X_occupation/weighted_sum/ReshapeReshapeBlinear/linear_model/native_country_X_occupation/weighted_sum/WhereJlinear/linear_model/native_country_X_occupation/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	
С
Elinear/linear_model/native_country_X_occupation/weighted_sum/Gather_1GatherJlinear/linear_model/native_country_X_occupation/weighted_sum/SparseReshapeDlinear/linear_model/native_country_X_occupation/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ
Ц
Elinear/linear_model/native_country_X_occupation/weighted_sum/Gather_2GatherSlinear/linear_model/native_country_X_occupation/weighted_sum/SparseReshape/IdentityDlinear/linear_model/native_country_X_occupation/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ф
Elinear/linear_model/native_country_X_occupation/weighted_sum/IdentityIdentityLlinear/linear_model/native_country_X_occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Vlinear/linear_model/native_country_X_occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 

dlinear/linear_model/native_country_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsElinear/linear_model/native_country_X_occupation/weighted_sum/Gather_1Elinear/linear_model/native_country_X_occupation/weighted_sum/Gather_2Elinear/linear_model/native_country_X_occupation/weighted_sum/IdentityVlinear/linear_model/native_country_X_occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Й
hlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Л
jlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Л
jlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Й
blinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicedlinear/linear_model/native_country_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowshlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackjlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1jlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Ylinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/CastCastblinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/UniqueUniqueflinear/linear_model/native_country_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ф
elinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGatherClinear/linear_model/native_country_X_occupation/weights/part_0/read[linear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ч
Tlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSumelinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/embedding_lookup]linear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/Unique:1Ylinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

Llinear/linear_model/native_country_X_occupation/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:
Ч
Flinear/linear_model/native_country_X_occupation/weighted_sum/Reshape_1Reshapeflinear/linear_model/native_country_X_occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Llinear/linear_model/native_country_X_occupation/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

ж
Blinear/linear_model/native_country_X_occupation/weighted_sum/ShapeShapeTlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Plinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Rlinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Rlinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Њ
Jlinear/linear_model/native_country_X_occupation/weighted_sum/strided_sliceStridedSliceBlinear/linear_model/native_country_X_occupation/weighted_sum/ShapePlinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice/stackRlinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice/stack_1Rlinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask

Dlinear/linear_model/native_country_X_occupation/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 

Blinear/linear_model/native_country_X_occupation/weighted_sum/stackPackDlinear/linear_model/native_country_X_occupation/weighted_sum/stack/0Jlinear/linear_model/native_country_X_occupation/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
Ђ
Alinear/linear_model/native_country_X_occupation/weighted_sum/TileTileFlinear/linear_model/native_country_X_occupation/weighted_sum/Reshape_1Blinear/linear_model/native_country_X_occupation/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
м
Glinear/linear_model/native_country_X_occupation/weighted_sum/zeros_like	ZerosLikeTlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
к
<linear/linear_model/native_country_X_occupation/weighted_sumSelectAlinear/linear_model/native_country_X_occupation/weighted_sum/TileGlinear/linear_model/native_country_X_occupation/weighted_sum/zeros_likeTlinear/linear_model/native_country_X_occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Р
Clinear/linear_model/native_country_X_occupation/weighted_sum/Cast_1Cast?linear/linear_model/native_country_X_occupation/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

Jlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

Ilinear/linear_model/native_country_X_occupation/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
л
Dlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_1SliceClinear/linear_model/native_country_X_occupation/weighted_sum/Cast_1Jlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_1/beginIlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Р
Dlinear/linear_model/native_country_X_occupation/weighted_sum/Shape_1Shape<linear/linear_model/native_country_X_occupation/weighted_sum*
out_type0*
T0*
_output_shapes
:

Jlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

Ilinear/linear_model/native_country_X_occupation/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
м
Dlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_2SliceDlinear/linear_model/native_country_X_occupation/weighted_sum/Shape_1Jlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_2/beginIlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Hlinear/linear_model/native_country_X_occupation/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
п
Clinear/linear_model/native_country_X_occupation/weighted_sum/concatConcatV2Dlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_1Dlinear/linear_model/native_country_X_occupation/weighted_sum/Slice_2Hlinear/linear_model/native_country_X_occupation/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:

Flinear/linear_model/native_country_X_occupation/weighted_sum/Reshape_2Reshape<linear/linear_model/native_country_X_occupation/weighted_sumClinear/linear_model/native_country_X_occupation/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
З
4linear/linear_model/occupation/to_sparse_input/ShapeShapeClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2*
out_type0*
T0*
_output_shapes
:
Ѕ
3linear/linear_model/occupation/to_sparse_input/CastCast4linear/linear_model/occupation/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
x
7linear/linear_model/occupation/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
ѓ
7linear/linear_model/occupation/to_sparse_input/NotEqualNotEqualClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_27linear/linear_model/occupation/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

4linear/linear_model/occupation/to_sparse_input/WhereWhere7linear/linear_model/occupation/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

<linear/linear_model/occupation/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

6linear/linear_model/occupation/to_sparse_input/ReshapeReshapeClinear/linear_model/age_bucketized_X_occupation_X_race/ExpandDims_2<linear/linear_model/occupation/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Blinear/linear_model/occupation/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

Dlinear/linear_model/occupation/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Dlinear/linear_model/occupation/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ё
<linear/linear_model/occupation/to_sparse_input/strided_sliceStridedSlice4linear/linear_model/occupation/to_sparse_input/WhereBlinear/linear_model/occupation/to_sparse_input/strided_slice/stackDlinear/linear_model/occupation/to_sparse_input/strided_slice/stack_1Dlinear/linear_model/occupation/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Dlinear/linear_model/occupation/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Flinear/linear_model/occupation/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Flinear/linear_model/occupation/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
§
>linear/linear_model/occupation/to_sparse_input/strided_slice_1StridedSlice4linear/linear_model/occupation/to_sparse_input/WhereDlinear/linear_model/occupation/to_sparse_input/strided_slice_1/stackFlinear/linear_model/occupation/to_sparse_input/strided_slice_1/stack_1Flinear/linear_model/occupation/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
Џ
6linear/linear_model/occupation/to_sparse_input/unstackUnpack3linear/linear_model/occupation/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
А
4linear/linear_model/occupation/to_sparse_input/stackPack8linear/linear_model/occupation/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
с
2linear/linear_model/occupation/to_sparse_input/MulMul>linear/linear_model/occupation/to_sparse_input/strided_slice_14linear/linear_model/occupation/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

Dlinear/linear_model/occupation/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ў
2linear/linear_model/occupation/to_sparse_input/SumSum2linear/linear_model/occupation/to_sparse_input/MulDlinear/linear_model/occupation/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
й
2linear/linear_model/occupation/to_sparse_input/AddAdd<linear/linear_model/occupation/to_sparse_input/strided_slice2linear/linear_model/occupation/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ

5linear/linear_model/occupation/to_sparse_input/GatherGather6linear/linear_model/occupation/to_sparse_input/Reshape2linear/linear_model/occupation/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ў
%linear/linear_model/occupation/lookupStringToHashBucketFast5linear/linear_model/occupation/to_sparse_input/Gather*#
_output_shapes
:џџџџџџџџџ*
num_bucketsd

)linear/linear_model/occupation/Shape/CastCast3linear/linear_model/occupation/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
|
2linear/linear_model/occupation/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
~
4linear/linear_model/occupation/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
~
4linear/linear_model/occupation/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

,linear/linear_model/occupation/strided_sliceStridedSlice)linear/linear_model/occupation/Shape/Cast2linear/linear_model/occupation/strided_slice/stack4linear/linear_model/occupation/strided_slice/stack_14linear/linear_model/occupation/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
r
'linear/linear_model/occupation/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
О
%linear/linear_model/occupation/Cast/xPack,linear/linear_model/occupation/strided_slice'linear/linear_model/occupation/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

#linear/linear_model/occupation/CastCast%linear/linear_model/occupation/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
ќ
,linear/linear_model/occupation/SparseReshapeSparseReshape4linear/linear_model/occupation/to_sparse_input/Where3linear/linear_model/occupation/to_sparse_input/Cast#linear/linear_model/occupation/Cast*-
_output_shapes
:џџџџџџџџџ:

5linear/linear_model/occupation/SparseReshape/IdentityIdentity%linear/linear_model/occupation/lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
ж
?linear/linear_model/occupation/weights/part_0/Initializer/zerosConst*
dtype0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
valueBd*    *
_output_shapes

:d
у
-linear/linear_model/occupation/weights/part_0
VariableV2*
	container *
_output_shapes

:d*
dtype0*
shape
:d*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
shared_name 
Т
4linear/linear_model/occupation/weights/part_0/AssignAssign-linear/linear_model/occupation/weights/part_0?linear/linear_model/occupation/weights/part_0/Initializer/zeros*
validate_shape(*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
use_locking(*
T0*
_output_shapes

:d
и
2linear/linear_model/occupation/weights/part_0/readIdentity-linear/linear_model/occupation/weights/part_0*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
T0*
_output_shapes

:d

7linear/linear_model/occupation/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

6linear/linear_model/occupation/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

1linear/linear_model/occupation/weighted_sum/SliceSlice.linear/linear_model/occupation/SparseReshape:17linear/linear_model/occupation/weighted_sum/Slice/begin6linear/linear_model/occupation/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
{
1linear/linear_model/occupation/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
м
0linear/linear_model/occupation/weighted_sum/ProdProd1linear/linear_model/occupation/weighted_sum/Slice1linear/linear_model/occupation/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
|
:linear/linear_model/occupation/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ї
2linear/linear_model/occupation/weighted_sum/GatherGather.linear/linear_model/occupation/SparseReshape:1:linear/linear_model/occupation/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
к
2linear/linear_model/occupation/weighted_sum/Cast/xPack0linear/linear_model/occupation/weighted_sum/Prod2linear/linear_model/occupation/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

9linear/linear_model/occupation/weighted_sum/SparseReshapeSparseReshape,linear/linear_model/occupation/SparseReshape.linear/linear_model/occupation/SparseReshape:12linear/linear_model/occupation/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Г
Blinear/linear_model/occupation/weighted_sum/SparseReshape/IdentityIdentity5linear/linear_model/occupation/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
|
:linear/linear_model/occupation/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
і
8linear/linear_model/occupation/weighted_sum/GreaterEqualGreaterEqualBlinear/linear_model/occupation/weighted_sum/SparseReshape/Identity:linear/linear_model/occupation/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ

1linear/linear_model/occupation/weighted_sum/WhereWhere8linear/linear_model/occupation/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

9linear/linear_model/occupation/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ш
3linear/linear_model/occupation/weighted_sum/ReshapeReshape1linear/linear_model/occupation/weighted_sum/Where9linear/linear_model/occupation/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

4linear/linear_model/occupation/weighted_sum/Gather_1Gather9linear/linear_model/occupation/weighted_sum/SparseReshape3linear/linear_model/occupation/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

4linear/linear_model/occupation/weighted_sum/Gather_2GatherBlinear/linear_model/occupation/weighted_sum/SparseReshape/Identity3linear/linear_model/occupation/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ђ
4linear/linear_model/occupation/weighted_sum/IdentityIdentity;linear/linear_model/occupation/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Elinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
В
Slinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows4linear/linear_model/occupation/weighted_sum/Gather_14linear/linear_model/occupation/weighted_sum/Gather_24linear/linear_model/occupation/weighted_sum/IdentityElinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ј
Wlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Њ
Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Њ
Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ф
Qlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceSlinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsWlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stackYlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Ylinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
р
Hlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/CastCastQlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
ї
Jlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/UniqueUniqueUlinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Tlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupGather2linear/linear_model/occupation/weights/part_0/readJlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*'
_output_shapes
:џџџџџџџџџ

Clinear/linear_model/occupation/weighted_sum/embedding_lookup_sparseSparseSegmentSumTlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/embedding_lookupLlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Unique:1Hlinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

;linear/linear_model/occupation/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:

5linear/linear_model/occupation/weighted_sum/Reshape_1ReshapeUlinear/linear_model/occupation/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2;linear/linear_model/occupation/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Д
1linear/linear_model/occupation/weighted_sum/ShapeShapeClinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

?linear/linear_model/occupation/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Alinear/linear_model/occupation/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Alinear/linear_model/occupation/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
е
9linear/linear_model/occupation/weighted_sum/strided_sliceStridedSlice1linear/linear_model/occupation/weighted_sum/Shape?linear/linear_model/occupation/weighted_sum/strided_slice/stackAlinear/linear_model/occupation/weighted_sum/strided_slice/stack_1Alinear/linear_model/occupation/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
u
3linear/linear_model/occupation/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
у
1linear/linear_model/occupation/weighted_sum/stackPack3linear/linear_model/occupation/weighted_sum/stack/09linear/linear_model/occupation/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
я
0linear/linear_model/occupation/weighted_sum/TileTile5linear/linear_model/occupation/weighted_sum/Reshape_11linear/linear_model/occupation/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
К
6linear/linear_model/occupation/weighted_sum/zeros_like	ZerosLikeClinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

+linear/linear_model/occupation/weighted_sumSelect0linear/linear_model/occupation/weighted_sum/Tile6linear/linear_model/occupation/weighted_sum/zeros_likeClinear/linear_model/occupation/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

2linear/linear_model/occupation/weighted_sum/Cast_1Cast.linear/linear_model/occupation/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

9linear/linear_model/occupation/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear_model/occupation/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

3linear/linear_model/occupation/weighted_sum/Slice_1Slice2linear/linear_model/occupation/weighted_sum/Cast_19linear/linear_model/occupation/weighted_sum/Slice_1/begin8linear/linear_model/occupation/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:

3linear/linear_model/occupation/weighted_sum/Shape_1Shape+linear/linear_model/occupation/weighted_sum*
out_type0*
T0*
_output_shapes
:

9linear/linear_model/occupation/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

8linear/linear_model/occupation/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

3linear/linear_model/occupation/weighted_sum/Slice_2Slice3linear/linear_model/occupation/weighted_sum/Shape_19linear/linear_model/occupation/weighted_sum/Slice_2/begin8linear/linear_model/occupation/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
y
7linear/linear_model/occupation/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 

2linear/linear_model/occupation/weighted_sum/concatConcatV23linear/linear_model/occupation/weighted_sum/Slice_13linear/linear_model/occupation/weighted_sum/Slice_27linear/linear_model/occupation/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
с
5linear/linear_model/occupation/weighted_sum/Reshape_2Reshape+linear/linear_model/occupation/weighted_sum2linear/linear_model/occupation/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
z
/linear/linear_model/relationship/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
З
+linear/linear_model/relationship/ExpandDims
ExpandDimsPlaceholder_4/linear/linear_model/relationship/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ
Ё
6linear/linear_model/relationship/to_sparse_input/ShapeShape+linear/linear_model/relationship/ExpandDims*
out_type0*
T0*
_output_shapes
:
Љ
5linear/linear_model/relationship/to_sparse_input/CastCast6linear/linear_model/relationship/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
z
9linear/linear_model/relationship/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
п
9linear/linear_model/relationship/to_sparse_input/NotEqualNotEqual+linear/linear_model/relationship/ExpandDims9linear/linear_model/relationship/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
Ѓ
6linear/linear_model/relationship/to_sparse_input/WhereWhere9linear/linear_model/relationship/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

>linear/linear_model/relationship/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ь
8linear/linear_model/relationship/to_sparse_input/ReshapeReshape+linear/linear_model/relationship/ExpandDims>linear/linear_model/relationship/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Dlinear/linear_model/relationship/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

Flinear/linear_model/relationship/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Flinear/linear_model/relationship/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ћ
>linear/linear_model/relationship/to_sparse_input/strided_sliceStridedSlice6linear/linear_model/relationship/to_sparse_input/WhereDlinear/linear_model/relationship/to_sparse_input/strided_slice/stackFlinear/linear_model/relationship/to_sparse_input/strided_slice/stack_1Flinear/linear_model/relationship/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Flinear/linear_model/relationship/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Hlinear/linear_model/relationship/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Hlinear/linear_model/relationship/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

@linear/linear_model/relationship/to_sparse_input/strided_slice_1StridedSlice6linear/linear_model/relationship/to_sparse_input/WhereFlinear/linear_model/relationship/to_sparse_input/strided_slice_1/stackHlinear/linear_model/relationship/to_sparse_input/strided_slice_1/stack_1Hlinear/linear_model/relationship/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
Г
8linear/linear_model/relationship/to_sparse_input/unstackUnpack5linear/linear_model/relationship/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
Д
6linear/linear_model/relationship/to_sparse_input/stackPack:linear/linear_model/relationship/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
ч
4linear/linear_model/relationship/to_sparse_input/MulMul@linear/linear_model/relationship/to_sparse_input/strided_slice_16linear/linear_model/relationship/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

Flinear/linear_model/relationship/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:

4linear/linear_model/relationship/to_sparse_input/SumSum4linear/linear_model/relationship/to_sparse_input/MulFlinear/linear_model/relationship/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
п
4linear/linear_model/relationship/to_sparse_input/AddAdd>linear/linear_model/relationship/to_sparse_input/strided_slice4linear/linear_model/relationship/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ

7linear/linear_model/relationship/to_sparse_input/GatherGather8linear/linear_model/relationship/to_sparse_input/Reshape4linear/linear_model/relationship/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
Ы
:linear/linear_model/relationship/relationship_lookup/ConstConst*
dtype0*]
valueTBRB HusbandB Not-in-familyB WifeB
 Own-childB
 UnmarriedB Other-relative*
_output_shapes
:
{
9linear/linear_model/relationship/relationship_lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 

@linear/linear_model/relationship/relationship_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

@linear/linear_model/relationship/relationship_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Њ
:linear/linear_model/relationship/relationship_lookup/rangeRange@linear/linear_model/relationship/relationship_lookup/range/start9linear/linear_model/relationship/relationship_lookup/Size@linear/linear_model/relationship/relationship_lookup/range/delta*

Tidx0*
_output_shapes
:
Д
<linear/linear_model/relationship/relationship_lookup/ToInt64Cast:linear/linear_model/relationship/relationship_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
Ы
?linear/linear_model/relationship/relationship_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 

Elinear/linear_model/relationship/relationship_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 
В
Jlinear/linear_model/relationship/relationship_lookup/hash_table/table_initInitializeTableV2?linear/linear_model/relationship/relationship_lookup/hash_table:linear/linear_model/relationship/relationship_lookup/Const<linear/linear_model/relationship/relationship_lookup/ToInt64*

Tkey0*

Tval0	
Ф
2linear/linear_model/relationship/hash_table_LookupLookupTableFindV2?linear/linear_model/relationship/relationship_lookup/hash_table7linear/linear_model/relationship/to_sparse_input/GatherElinear/linear_model/relationship/relationship_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ

+linear/linear_model/relationship/Shape/CastCast5linear/linear_model/relationship/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
~
4linear/linear_model/relationship/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

6linear/linear_model/relationship/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

6linear/linear_model/relationship/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ѓ
.linear/linear_model/relationship/strided_sliceStridedSlice+linear/linear_model/relationship/Shape/Cast4linear/linear_model/relationship/strided_slice/stack6linear/linear_model/relationship/strided_slice/stack_16linear/linear_model/relationship/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
t
)linear/linear_model/relationship/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ф
'linear/linear_model/relationship/Cast/xPack.linear/linear_model/relationship/strided_slice)linear/linear_model/relationship/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

%linear/linear_model/relationship/CastCast'linear/linear_model/relationship/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:

.linear/linear_model/relationship/SparseReshapeSparseReshape6linear/linear_model/relationship/to_sparse_input/Where5linear/linear_model/relationship/to_sparse_input/Cast%linear/linear_model/relationship/Cast*-
_output_shapes
:џџџџџџџџџ:
Ѕ
7linear/linear_model/relationship/SparseReshape/IdentityIdentity2linear/linear_model/relationship/hash_table_Lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
к
Alinear/linear_model/relationship/weights/part_0/Initializer/zerosConst*
dtype0*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
valueB*    *
_output_shapes

:
ч
/linear/linear_model/relationship/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
shared_name 
Ъ
6linear/linear_model/relationship/weights/part_0/AssignAssign/linear/linear_model/relationship/weights/part_0Alinear/linear_model/relationship/weights/part_0/Initializer/zeros*
validate_shape(*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
use_locking(*
T0*
_output_shapes

:
о
4linear/linear_model/relationship/weights/part_0/readIdentity/linear/linear_model/relationship/weights/part_0*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
T0*
_output_shapes

:

9linear/linear_model/relationship/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear_model/relationship/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

3linear/linear_model/relationship/weighted_sum/SliceSlice0linear/linear_model/relationship/SparseReshape:19linear/linear_model/relationship/weighted_sum/Slice/begin8linear/linear_model/relationship/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
}
3linear/linear_model/relationship/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
т
2linear/linear_model/relationship/weighted_sum/ProdProd3linear/linear_model/relationship/weighted_sum/Slice3linear/linear_model/relationship/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
~
<linear/linear_model/relationship/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
§
4linear/linear_model/relationship/weighted_sum/GatherGather0linear/linear_model/relationship/SparseReshape:1<linear/linear_model/relationship/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
р
4linear/linear_model/relationship/weighted_sum/Cast/xPack2linear/linear_model/relationship/weighted_sum/Prod4linear/linear_model/relationship/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

;linear/linear_model/relationship/weighted_sum/SparseReshapeSparseReshape.linear/linear_model/relationship/SparseReshape0linear/linear_model/relationship/SparseReshape:14linear/linear_model/relationship/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
З
Dlinear/linear_model/relationship/weighted_sum/SparseReshape/IdentityIdentity7linear/linear_model/relationship/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
~
<linear/linear_model/relationship/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ќ
:linear/linear_model/relationship/weighted_sum/GreaterEqualGreaterEqualDlinear/linear_model/relationship/weighted_sum/SparseReshape/Identity<linear/linear_model/relationship/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
Ё
3linear/linear_model/relationship/weighted_sum/WhereWhere:linear/linear_model/relationship/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

;linear/linear_model/relationship/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
ю
5linear/linear_model/relationship/weighted_sum/ReshapeReshape3linear/linear_model/relationship/weighted_sum/Where;linear/linear_model/relationship/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

6linear/linear_model/relationship/weighted_sum/Gather_1Gather;linear/linear_model/relationship/weighted_sum/SparseReshape5linear/linear_model/relationship/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

6linear/linear_model/relationship/weighted_sum/Gather_2GatherDlinear/linear_model/relationship/weighted_sum/SparseReshape/Identity5linear/linear_model/relationship/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
І
6linear/linear_model/relationship/weighted_sum/IdentityIdentity=linear/linear_model/relationship/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Glinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
М
Ulinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows6linear/linear_model/relationship/weighted_sum/Gather_16linear/linear_model/relationship/weighted_sum/Gather_26linear/linear_model/relationship/weighted_sum/IdentityGlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Њ
Ylinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ќ
[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ќ
[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ю
Slinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceUlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsYlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1[linear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ф
Jlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/CastCastSlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
ћ
Llinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/UniqueUniqueWlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

Vlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupGather4linear/linear_model/relationship/weights/part_0/readLlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*'
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/relationship/weighted_sum/embedding_lookup_sparseSparseSegmentSumVlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/embedding_lookupNlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Unique:1Jlinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

=linear/linear_model/relationship/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:

7linear/linear_model/relationship/weighted_sum/Reshape_1ReshapeWlinear/linear_model/relationship/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2=linear/linear_model/relationship/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

И
3linear/linear_model/relationship/weighted_sum/ShapeShapeElinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Alinear/linear_model/relationship/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Clinear/linear_model/relationship/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Clinear/linear_model/relationship/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
п
;linear/linear_model/relationship/weighted_sum/strided_sliceStridedSlice3linear/linear_model/relationship/weighted_sum/ShapeAlinear/linear_model/relationship/weighted_sum/strided_slice/stackClinear/linear_model/relationship/weighted_sum/strided_slice/stack_1Clinear/linear_model/relationship/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
w
5linear/linear_model/relationship/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
щ
3linear/linear_model/relationship/weighted_sum/stackPack5linear/linear_model/relationship/weighted_sum/stack/0;linear/linear_model/relationship/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
ѕ
2linear/linear_model/relationship/weighted_sum/TileTile7linear/linear_model/relationship/weighted_sum/Reshape_13linear/linear_model/relationship/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
О
8linear/linear_model/relationship/weighted_sum/zeros_like	ZerosLikeElinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

-linear/linear_model/relationship/weighted_sumSelect2linear/linear_model/relationship/weighted_sum/Tile8linear/linear_model/relationship/weighted_sum/zeros_likeElinear/linear_model/relationship/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
4linear/linear_model/relationship/weighted_sum/Cast_1Cast0linear/linear_model/relationship/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

;linear/linear_model/relationship/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear_model/relationship/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear_model/relationship/weighted_sum/Slice_1Slice4linear/linear_model/relationship/weighted_sum/Cast_1;linear/linear_model/relationship/weighted_sum/Slice_1/begin:linear/linear_model/relationship/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ђ
5linear/linear_model/relationship/weighted_sum/Shape_1Shape-linear/linear_model/relationship/weighted_sum*
out_type0*
T0*
_output_shapes
:

;linear/linear_model/relationship/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

:linear/linear_model/relationship/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
 
5linear/linear_model/relationship/weighted_sum/Slice_2Slice5linear/linear_model/relationship/weighted_sum/Shape_1;linear/linear_model/relationship/weighted_sum/Slice_2/begin:linear/linear_model/relationship/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
{
9linear/linear_model/relationship/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ѓ
4linear/linear_model/relationship/weighted_sum/concatConcatV25linear/linear_model/relationship/weighted_sum/Slice_15linear/linear_model/relationship/weighted_sum/Slice_29linear/linear_model/relationship/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
ч
7linear/linear_model/relationship/weighted_sum/Reshape_2Reshape-linear/linear_model/relationship/weighted_sum4linear/linear_model/relationship/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0
w
,linear/linear_model/workclass/ExpandDims/dimConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Б
(linear/linear_model/workclass/ExpandDims
ExpandDimsPlaceholder_5,linear/linear_model/workclass/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/workclass/to_sparse_input/ShapeShape(linear/linear_model/workclass/ExpandDims*
out_type0*
T0*
_output_shapes
:
Ѓ
2linear/linear_model/workclass/to_sparse_input/CastCast3linear/linear_model/workclass/to_sparse_input/Shape*

DstT0	*

SrcT0*
_output_shapes
:
w
6linear/linear_model/workclass/to_sparse_input/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
ж
6linear/linear_model/workclass/to_sparse_input/NotEqualNotEqual(linear/linear_model/workclass/ExpandDims6linear/linear_model/workclass/to_sparse_input/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/workclass/to_sparse_input/WhereWhere6linear/linear_model/workclass/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

;linear/linear_model/workclass/to_sparse_input/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
у
5linear/linear_model/workclass/to_sparse_input/ReshapeReshape(linear/linear_model/workclass/ExpandDims;linear/linear_model/workclass/to_sparse_input/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

Alinear/linear_model/workclass/to_sparse_input/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

Clinear/linear_model/workclass/to_sparse_input/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Clinear/linear_model/workclass/to_sparse_input/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ь
;linear/linear_model/workclass/to_sparse_input/strided_sliceStridedSlice3linear/linear_model/workclass/to_sparse_input/WhereAlinear/linear_model/workclass/to_sparse_input/strided_slice/stackClinear/linear_model/workclass/to_sparse_input/strided_slice/stack_1Clinear/linear_model/workclass/to_sparse_input/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

Clinear/linear_model/workclass/to_sparse_input/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

Elinear/linear_model/workclass/to_sparse_input/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

Elinear/linear_model/workclass/to_sparse_input/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ј
=linear/linear_model/workclass/to_sparse_input/strided_slice_1StridedSlice3linear/linear_model/workclass/to_sparse_input/WhereClinear/linear_model/workclass/to_sparse_input/strided_slice_1/stackElinear/linear_model/workclass/to_sparse_input/strided_slice_1/stack_1Elinear/linear_model/workclass/to_sparse_input/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
­
5linear/linear_model/workclass/to_sparse_input/unstackUnpack2linear/linear_model/workclass/to_sparse_input/Cast*	
num*
T0	*
_output_shapes
: : *

axis 
Ў
3linear/linear_model/workclass/to_sparse_input/stackPack7linear/linear_model/workclass/to_sparse_input/unstack:1*
N*

axis *
T0	*
_output_shapes
:
о
1linear/linear_model/workclass/to_sparse_input/MulMul=linear/linear_model/workclass/to_sparse_input/strided_slice_13linear/linear_model/workclass/to_sparse_input/stack*
T0	*'
_output_shapes
:џџџџџџџџџ

Clinear/linear_model/workclass/to_sparse_input/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ћ
1linear/linear_model/workclass/to_sparse_input/SumSum1linear/linear_model/workclass/to_sparse_input/MulClinear/linear_model/workclass/to_sparse_input/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0	
ж
1linear/linear_model/workclass/to_sparse_input/AddAdd;linear/linear_model/workclass/to_sparse_input/strided_slice1linear/linear_model/workclass/to_sparse_input/Sum*
T0	*#
_output_shapes
:џџџџџџџџџ

4linear/linear_model/workclass/to_sparse_input/GatherGather5linear/linear_model/workclass/to_sparse_input/Reshape1linear/linear_model/workclass/to_sparse_input/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
я
4linear/linear_model/workclass/workclass_lookup/ConstConst*
dtype0*
value}B{	B Self-emp-not-incB PrivateB
 State-govB Federal-govB
 Local-govB ?B Self-emp-incB Without-payB Never-worked*
_output_shapes
:	
u
3linear/linear_model/workclass/workclass_lookup/SizeConst*
dtype0*
value	B :	*
_output_shapes
: 
|
:linear/linear_model/workclass/workclass_lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
|
:linear/linear_model/workclass/workclass_lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 

4linear/linear_model/workclass/workclass_lookup/rangeRange:linear/linear_model/workclass/workclass_lookup/range/start3linear/linear_model/workclass/workclass_lookup/Size:linear/linear_model/workclass/workclass_lookup/range/delta*

Tidx0*
_output_shapes
:	
Ј
6linear/linear_model/workclass/workclass_lookup/ToInt64Cast4linear/linear_model/workclass/workclass_lookup/range*

DstT0	*

SrcT0*
_output_shapes
:	
Х
9linear/linear_model/workclass/workclass_lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 

?linear/linear_model/workclass/workclass_lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
џџџџџџџџџ*
_output_shapes
: 

Dlinear/linear_model/workclass/workclass_lookup/hash_table/table_initInitializeTableV29linear/linear_model/workclass/workclass_lookup/hash_table4linear/linear_model/workclass/workclass_lookup/Const6linear/linear_model/workclass/workclass_lookup/ToInt64*

Tkey0*

Tval0	
В
/linear/linear_model/workclass/hash_table_LookupLookupTableFindV29linear/linear_model/workclass/workclass_lookup/hash_table4linear/linear_model/workclass/to_sparse_input/Gather?linear/linear_model/workclass/workclass_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ

(linear/linear_model/workclass/Shape/CastCast2linear/linear_model/workclass/to_sparse_input/Cast*

DstT0*

SrcT0	*
_output_shapes
:
{
1linear/linear_model/workclass/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
}
3linear/linear_model/workclass/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
}
3linear/linear_model/workclass/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

+linear/linear_model/workclass/strided_sliceStridedSlice(linear/linear_model/workclass/Shape/Cast1linear/linear_model/workclass/strided_slice/stack3linear/linear_model/workclass/strided_slice/stack_13linear/linear_model/workclass/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
q
&linear/linear_model/workclass/Cast/x/1Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Л
$linear/linear_model/workclass/Cast/xPack+linear/linear_model/workclass/strided_slice&linear/linear_model/workclass/Cast/x/1*
N*

axis *
T0*
_output_shapes
:

"linear/linear_model/workclass/CastCast$linear/linear_model/workclass/Cast/x*

DstT0	*

SrcT0*
_output_shapes
:
ј
+linear/linear_model/workclass/SparseReshapeSparseReshape3linear/linear_model/workclass/to_sparse_input/Where2linear/linear_model/workclass/to_sparse_input/Cast"linear/linear_model/workclass/Cast*-
_output_shapes
:џџџџџџџџџ:

4linear/linear_model/workclass/SparseReshape/IdentityIdentity/linear/linear_model/workclass/hash_table_Lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
д
>linear/linear_model/workclass/weights/part_0/Initializer/zerosConst*
dtype0*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
valueB	*    *
_output_shapes

:	
с
,linear/linear_model/workclass/weights/part_0
VariableV2*
	container *
_output_shapes

:	*
dtype0*
shape
:	*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
shared_name 
О
3linear/linear_model/workclass/weights/part_0/AssignAssign,linear/linear_model/workclass/weights/part_0>linear/linear_model/workclass/weights/part_0/Initializer/zeros*
validate_shape(*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
use_locking(*
T0*
_output_shapes

:	
е
1linear/linear_model/workclass/weights/part_0/readIdentity,linear/linear_model/workclass/weights/part_0*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
T0*
_output_shapes

:	

6linear/linear_model/workclass/weighted_sum/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

5linear/linear_model/workclass/weighted_sum/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

0linear/linear_model/workclass/weighted_sum/SliceSlice-linear/linear_model/workclass/SparseReshape:16linear/linear_model/workclass/weighted_sum/Slice/begin5linear/linear_model/workclass/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:
z
0linear/linear_model/workclass/weighted_sum/ConstConst*
dtype0*
valueB: *
_output_shapes
:
й
/linear/linear_model/workclass/weighted_sum/ProdProd0linear/linear_model/workclass/weighted_sum/Slice0linear/linear_model/workclass/weighted_sum/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
{
9linear/linear_model/workclass/weighted_sum/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
є
1linear/linear_model/workclass/weighted_sum/GatherGather-linear/linear_model/workclass/SparseReshape:19linear/linear_model/workclass/weighted_sum/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
з
1linear/linear_model/workclass/weighted_sum/Cast/xPack/linear/linear_model/workclass/weighted_sum/Prod1linear/linear_model/workclass/weighted_sum/Gather*
N*

axis *
T0	*
_output_shapes
:

8linear/linear_model/workclass/weighted_sum/SparseReshapeSparseReshape+linear/linear_model/workclass/SparseReshape-linear/linear_model/workclass/SparseReshape:11linear/linear_model/workclass/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
Б
Alinear/linear_model/workclass/weighted_sum/SparseReshape/IdentityIdentity4linear/linear_model/workclass/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
{
9linear/linear_model/workclass/weighted_sum/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ѓ
7linear/linear_model/workclass/weighted_sum/GreaterEqualGreaterEqualAlinear/linear_model/workclass/weighted_sum/SparseReshape/Identity9linear/linear_model/workclass/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ

0linear/linear_model/workclass/weighted_sum/WhereWhere7linear/linear_model/workclass/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ

8linear/linear_model/workclass/weighted_sum/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
х
2linear/linear_model/workclass/weighted_sum/ReshapeReshape0linear/linear_model/workclass/weighted_sum/Where8linear/linear_model/workclass/weighted_sum/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	

3linear/linear_model/workclass/weighted_sum/Gather_1Gather8linear/linear_model/workclass/weighted_sum/SparseReshape2linear/linear_model/workclass/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

3linear/linear_model/workclass/weighted_sum/Gather_2GatherAlinear/linear_model/workclass/weighted_sum/SparseReshape/Identity2linear/linear_model/workclass/weighted_sum/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:џџџџџџџџџ
 
3linear/linear_model/workclass/weighted_sum/IdentityIdentity:linear/linear_model/workclass/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:

Dlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
­
Rlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows3linear/linear_model/workclass/weighted_sum/Gather_13linear/linear_model/workclass/weighted_sum/Gather_23linear/linear_model/workclass/weighted_sum/IdentityDlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ї
Vlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Љ
Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Љ
Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
п
Plinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceRlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsVlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stackXlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Xlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
о
Glinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/CastCastPlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
ѕ
Ilinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/UniqueUniqueTlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ќ
Slinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupGather1linear/linear_model/workclass/weights/part_0/readIlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*'
_output_shapes
:џџџџџџџџџ
џ
Blinear/linear_model/workclass/weighted_sum/embedding_lookup_sparseSparseSegmentSumSlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/embedding_lookupKlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Unique:1Glinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse/Cast*'
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0

:linear/linear_model/workclass/weighted_sum/Reshape_1/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:

4linear/linear_model/workclass/weighted_sum/Reshape_1ReshapeTlinear/linear_model/workclass/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2:linear/linear_model/workclass/weighted_sum/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

В
0linear/linear_model/workclass/weighted_sum/ShapeShapeBlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

>linear/linear_model/workclass/weighted_sum/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

@linear/linear_model/workclass/weighted_sum/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

@linear/linear_model/workclass/weighted_sum/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
а
8linear/linear_model/workclass/weighted_sum/strided_sliceStridedSlice0linear/linear_model/workclass/weighted_sum/Shape>linear/linear_model/workclass/weighted_sum/strided_slice/stack@linear/linear_model/workclass/weighted_sum/strided_slice/stack_1@linear/linear_model/workclass/weighted_sum/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
t
2linear/linear_model/workclass/weighted_sum/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
р
0linear/linear_model/workclass/weighted_sum/stackPack2linear/linear_model/workclass/weighted_sum/stack/08linear/linear_model/workclass/weighted_sum/strided_slice*
N*

axis *
T0*
_output_shapes
:
ь
/linear/linear_model/workclass/weighted_sum/TileTile4linear/linear_model/workclass/weighted_sum/Reshape_10linear/linear_model/workclass/weighted_sum/stack*

Tmultiples0*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
И
5linear/linear_model/workclass/weighted_sum/zeros_like	ZerosLikeBlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

*linear/linear_model/workclass/weighted_sumSelect/linear/linear_model/workclass/weighted_sum/Tile5linear/linear_model/workclass/weighted_sum/zeros_likeBlinear/linear_model/workclass/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

1linear/linear_model/workclass/weighted_sum/Cast_1Cast-linear/linear_model/workclass/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

8linear/linear_model/workclass/weighted_sum/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

7linear/linear_model/workclass/weighted_sum/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

2linear/linear_model/workclass/weighted_sum/Slice_1Slice1linear/linear_model/workclass/weighted_sum/Cast_18linear/linear_model/workclass/weighted_sum/Slice_1/begin7linear/linear_model/workclass/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:

2linear/linear_model/workclass/weighted_sum/Shape_1Shape*linear/linear_model/workclass/weighted_sum*
out_type0*
T0*
_output_shapes
:

8linear/linear_model/workclass/weighted_sum/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

7linear/linear_model/workclass/weighted_sum/Slice_2/sizeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:

2linear/linear_model/workclass/weighted_sum/Slice_2Slice2linear/linear_model/workclass/weighted_sum/Shape_18linear/linear_model/workclass/weighted_sum/Slice_2/begin7linear/linear_model/workclass/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:
x
6linear/linear_model/workclass/weighted_sum/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 

1linear/linear_model/workclass/weighted_sum/concatConcatV22linear/linear_model/workclass/weighted_sum/Slice_12linear/linear_model/workclass/weighted_sum/Slice_26linear/linear_model/workclass/weighted_sum/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
о
4linear/linear_model/workclass/weighted_sum/Reshape_2Reshape*linear/linear_model/workclass/weighted_sum1linear/linear_model/workclass/weighted_sum/concat*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

(linear/linear_model/weighted_sum_no_biasAddN9linear/linear_model/age_bucketized/weighted_sum/Reshape_2Mlinear/linear_model/age_bucketized_X_occupation_X_race/weighted_sum/Reshape_24linear/linear_model/education/weighted_sum/Reshape_2Alinear/linear_model/education_X_occupation/weighted_sum/Reshape_21linear/linear_model/gender/weighted_sum/Reshape_29linear/linear_model/marital_status/weighted_sum/Reshape_29linear/linear_model/native_country/weighted_sum/Reshape_2Flinear/linear_model/native_country_X_occupation/weighted_sum/Reshape_25linear/linear_model/occupation/weighted_sum/Reshape_27linear/linear_model/relationship/weighted_sum/Reshape_24linear/linear_model/workclass/weighted_sum/Reshape_2*'
_output_shapes
:џџџџџџџџџ*
T0*
N
Т
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
dtype0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    *
_output_shapes
:
Я
'linear/linear_model/bias_weights/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
shared_name 
І
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
T0*
_output_shapes
:
Т
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
T0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
T0*
_output_shapes
:
Р
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*'
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
^
linear/zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

linear/zero_fraction/EqualEqual linear/linear_model/weighted_sumlinear/zero_fraction/zero*
T0*'
_output_shapes
:џџџџџџџџџ
~
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
k
linear/zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

*linear/linear/fraction_of_zero_values/tagsConst*
dtype0*6
value-B+ B%linear/linear/fraction_of_zero_values*
_output_shapes
: 

%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction/Mean*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*
dtype0*)
value B Blinear/linear/activation*
_output_shapes
: 

linear/linear/activationHistogramSummarylinear/linear/activation/tag linear/linear_model/weighted_sum*
T0*
_output_shapes
: 
r
addAdddnn/logits/BiasAdd linear/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
`
head/predictions/logits/ShapeShapeadd*
out_type0*
T0*
_output_shapes
:
j
(head/predictions/logits/assert_rank/rankConst*
dtype0*
value	B :*
_output_shapes
: 
Z
Rhead/predictions/logits/assert_rank/assert_type/statically_determined_correct_typeNoOp
K
Chead/predictions/logits/assert_rank/static_checks_determined_all_okNoOp
Л
+head/predictions/logits/strided_slice/stackConstD^head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
valueB:*
_output_shapes
:
Н
-head/predictions/logits/strided_slice/stack_1ConstD^head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
valueB:*
_output_shapes
:
Н
-head/predictions/logits/strided_slice/stack_2ConstD^head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
valueB:*
_output_shapes
:
ё
%head/predictions/logits/strided_sliceStridedSlicehead/predictions/logits/Shape+head/predictions/logits/strided_slice/stack-head/predictions/logits/strided_slice/stack_1-head/predictions/logits/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
Ў
&head/predictions/logits/assert_equal/xConstD^head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
value	B :*
_output_shapes
: 
Ѓ
*head/predictions/logits/assert_equal/EqualEqual&head/predictions/logits/assert_equal/x%head/predictions/logits/strided_slice*
T0*
_output_shapes
: 
Г
*head/predictions/logits/assert_equal/ConstConstD^head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
valueB *
_output_shapes
: 
М
(head/predictions/logits/assert_equal/AllAll*head/predictions/logits/assert_equal/Equal*head/predictions/logits/assert_equal/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
Ђ
2head/predictions/logits/assert_equal/Assert/AssertAssert(head/predictions/logits/assert_equal/Allhead/predictions/logits/Shape*
	summarize*

T
2
е
head/predictions/logitsIdentityaddD^head/predictions/logits/assert_rank/static_checks_determined_all_ok3^head/predictions/logits/assert_equal/Assert/Assert*
T0*'
_output_shapes
:џџџџџџџџџ
o
head/predictions/logisticSigmoidhead/predictions/logits*
T0*'
_output_shapes
:џџџџџџџџџ
s
head/predictions/zeros_like	ZerosLikehead/predictions/logits*
T0*'
_output_shapes
:џџџџџџџџџ
h
&head/predictions/two_class_logits/axisConst*
dtype0*
value	B :*
_output_shapes
: 
в
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likehead/predictions/logits&head/predictions/two_class_logits/axis*
N*

Tidx0*
T0*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
c
!head/predictions/ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
Д
head/predictions/ArgMaxArgMax!head/predictions/two_class_logits!head/predictions/ArgMax/dimension*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
o
head/predictions/classes/shapeConst*
dtype0*
valueB"џџџџ   *
_output_shapes
:

head/predictions/classesReshapehead/predictions/ArgMaxhead/predictions/classes/shape*'
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0	
в
head/predictions/str_classesAsStringhead/predictions/classes*

scientific( *'
_output_shapes
:џџџџџџџџџ*
	precisionџџџџџџџџџ*
widthџџџџџџџџџ*
T0	*
shortest( *

fill 
c

head/ShapeShapehead/predictions/logistic*
out_type0*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
d
head/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
d
head/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
d
head/AsString/inputConst*
dtype0*
valueB"       *
_output_shapes
:
Б
head/AsStringAsStringhead/AsString/input*

scientific( *
_output_shapes
:*
	precisionџџџџџџџџџ*
widthџџџџџџџџџ*
T0*
shortest( *

fill 
U
head/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
v
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
dtype0*
value	B :*
_output_shapes
: 

head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*

axis *
T0*
_output_shapes
:
{
	head/TileTilehead/ExpandDimshead/Tile/multiples*

Tmultiples0*
T0*'
_output_shapes
:џџџџџџџџџ
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_efbd082afe504e9382f04c721e84b890/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
dtype0*Я
valueХBТBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBUdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weightsBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB*linear/linear_model/age_bucketized/weightsB>linear/linear_model/age_bucketized_X_occupation_X_race/weightsB linear/linear_model/bias_weightsB%linear/linear_model/education/weightsB2linear/linear_model/education_X_occupation/weightsB"linear/linear_model/gender/weightsB*linear/linear_model/marital_status/weightsB*linear/linear_model/native_country/weightsB7linear/linear_model/native_country_X_occupation/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
_output_shapes
:
Ь
save/SaveV2/shape_and_slicesConst*
dtype0*ћ
valueёBюB	100 0,100B66 100 0,66:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B100 8 0,100:0,8B100 8 0,100:0,8B1 0,1B34 1 0,34:0,1B B11 1 0,11:0,1B1000000 1 0,1000000:0,1B1 0,1B16 1 0,16:0,1B10000 1 0,10000:0,1B2 1 0,2:0,1B7 1 0,7:0,1B100 1 0,100:0,1B10000 1 0,10000:0,1B100 1 0,100:0,1B6 1 0,6:0,1B9 1 0,9:0,1*
_output_shapes
:
ц

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/read"dnn/hiddenlayer_3/bias/part_0/read$dnn/hiddenlayer_3/kernel/part_0/readadnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/read]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step6linear/linear_model/age_bucketized/weights/part_0/readJlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/read,linear/linear_model/bias_weights/part_0/read1linear/linear_model/education/weights/part_0/read>linear/linear_model/education_X_occupation/weights/part_0/read.linear/linear_model/gender/weights/part_0/read6linear/linear_model/marital_status/weights/part_0/read6linear/linear_model/native_country/weights/part_0/readClinear/linear_model/native_country_X_occupation/weights/part_0/read2linear/linear_model/occupation/weights/part_0/read4linear/linear_model/relationship/weights/part_0/read1linear/linear_model/workclass/weights/part_0/read*'
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
z
save/RestoreV2/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_0/bias*
_output_shapes
:
q
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueBB	100 0,100*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:d
Ф
save/AssignAssigndnn/hiddenlayer_0/bias/part_0save/RestoreV2*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
use_locking(*
T0*
_output_shapes
:d
~
save/RestoreV2_1/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_0/kernel*
_output_shapes
:
{
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*&
valueBB66 100 0,66:0,100*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:Bd
а
save/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save/RestoreV2_1*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
use_locking(*
T0*
_output_shapes

:Bd
|
save/RestoreV2_2/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_1/bias*
_output_shapes
:
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueBB70 0,70*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:F
Ш
save/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save/RestoreV2_2*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
use_locking(*
T0*
_output_shapes
:F
~
save/RestoreV2_3/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_1/kernel*
_output_shapes
:
{
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*&
valueBB100 70 0,100:0,70*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:dF
а
save/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save/RestoreV2_3*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
use_locking(*
T0*
_output_shapes

:dF
|
save/RestoreV2_4/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_2/bias*
_output_shapes
:
q
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueBB48 0,48*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:0
Ш
save/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save/RestoreV2_4*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
use_locking(*
T0*
_output_shapes
:0
~
save/RestoreV2_5/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_2/kernel*
_output_shapes
:
y
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*$
valueBB70 48 0,70:0,48*
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:F0
а
save/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save/RestoreV2_5*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
use_locking(*
T0*
_output_shapes

:F0
|
save/RestoreV2_6/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_3/bias*
_output_shapes
:
q
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueBB34 0,34*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:"
Ш
save/Assign_6Assigndnn/hiddenlayer_3/bias/part_0save/RestoreV2_6*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
use_locking(*
T0*
_output_shapes
:"
~
save/RestoreV2_7/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_3/kernel*
_output_shapes
:
y
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*$
valueBB48 34 0,48:0,34*
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:0"
а
save/Assign_7Assigndnn/hiddenlayer_3/kernel/part_0save/RestoreV2_7*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
use_locking(*
T0*
_output_shapes

:0"
Л
save/RestoreV2_8/tensor_namesConst*
dtype0*j
valueaB_BUdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights*
_output_shapes
:
y
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*$
valueBB100 8 0,100:0,8*
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes

:d
Ъ
save/Assign_8Assign\dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0save/RestoreV2_8*
validate_shape(*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
use_locking(*
T0*
_output_shapes

:d
З
save/RestoreV2_9/tensor_namesConst*
dtype0*f
value]B[BQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights*
_output_shapes
:
y
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*$
valueBB100 8 0,100:0,8*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes

:d
Т
save/Assign_9AssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0save/RestoreV2_9*
validate_shape(*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
use_locking(*
T0*
_output_shapes

:d
v
save/RestoreV2_10/tensor_namesConst*
dtype0*$
valueBBdnn/logits/bias*
_output_shapes
:
p
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
М
save/Assign_10Assigndnn/logits/bias/part_0save/RestoreV2_10*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0*
use_locking(*
T0*
_output_shapes
:
x
save/RestoreV2_11/tensor_namesConst*
dtype0*&
valueBBdnn/logits/kernel*
_output_shapes
:
x
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*"
valueBB34 1 0,34:0,1*
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes

:"
Ф
save/Assign_11Assigndnn/logits/kernel/part_0save/RestoreV2_11*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0*
use_locking(*
T0*
_output_shapes

:"
r
save/RestoreV2_12/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ђ
save/Assign_12Assignglobal_stepsave/RestoreV2_12*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 

save/RestoreV2_13/tensor_namesConst*
dtype0*?
value6B4B*linear/linear_model/age_bucketized/weights*
_output_shapes
:
x
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*"
valueBB11 1 0,11:0,1*
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes

:
і
save/Assign_13Assign1linear/linear_model/age_bucketized/weights/part_0save/RestoreV2_13*
validate_shape(*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Ѕ
save/RestoreV2_14/tensor_namesConst*
dtype0*S
valueJBHB>linear/linear_model/age_bucketized_X_occupation_X_race/weights*
_output_shapes
:

"save/RestoreV2_14/shape_and_slicesConst*
dtype0*,
value#B!B1000000 1 0,1000000:0,1*
_output_shapes
:
Ё
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2* 
_output_shapes
:
Р=
 
save/Assign_14AssignElinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0save/RestoreV2_14*
validate_shape(*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*
use_locking(*
T0* 
_output_shapes
:
Р=

save/RestoreV2_15/tensor_namesConst*
dtype0*5
value,B*B linear/linear_model/bias_weights*
_output_shapes
:
p
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
о
save/Assign_15Assign'linear/linear_model/bias_weights/part_0save/RestoreV2_15*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_16/tensor_namesConst*
dtype0*:
value1B/B%linear/linear_model/education/weights*
_output_shapes
:
x
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*"
valueBB16 1 0,16:0,1*
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes

:
ь
save/Assign_16Assign,linear/linear_model/education/weights/part_0save/RestoreV2_16*
validate_shape(*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_17/tensor_namesConst*
dtype0*G
value>B<B2linear/linear_model/education_X_occupation/weights*
_output_shapes
:
~
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*(
valueBB10000 1 0,10000:0,1*
_output_shapes
:
 
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:	N

save/Assign_17Assign9linear/linear_model/education_X_occupation/weights/part_0save/RestoreV2_17*
validate_shape(*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
use_locking(*
T0*
_output_shapes
:	N

save/RestoreV2_18/tensor_namesConst*
dtype0*7
value.B,B"linear/linear_model/gender/weights*
_output_shapes
:
v
"save/RestoreV2_18/shape_and_slicesConst*
dtype0* 
valueBB2 1 0,2:0,1*
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes

:
ц
save/Assign_18Assign)linear/linear_model/gender/weights/part_0save/RestoreV2_18*
validate_shape(*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_19/tensor_namesConst*
dtype0*?
value6B4B*linear/linear_model/marital_status/weights*
_output_shapes
:
v
"save/RestoreV2_19/shape_and_slicesConst*
dtype0* 
valueBB7 1 0,7:0,1*
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes

:
і
save/Assign_19Assign1linear/linear_model/marital_status/weights/part_0save/RestoreV2_19*
validate_shape(*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_20/tensor_namesConst*
dtype0*?
value6B4B*linear/linear_model/native_country/weights*
_output_shapes
:
z
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*$
valueBB100 1 0,100:0,1*
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes

:d
і
save/Assign_20Assign1linear/linear_model/native_country/weights/part_0save/RestoreV2_20*
validate_shape(*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*
use_locking(*
T0*
_output_shapes

:d

save/RestoreV2_21/tensor_namesConst*
dtype0*L
valueCBAB7linear/linear_model/native_country_X_occupation/weights*
_output_shapes
:
~
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*(
valueBB10000 1 0,10000:0,1*
_output_shapes
:
 
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:	N

save/Assign_21Assign>linear/linear_model/native_country_X_occupation/weights/part_0save/RestoreV2_21*
validate_shape(*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*
use_locking(*
T0*
_output_shapes
:	N

save/RestoreV2_22/tensor_namesConst*
dtype0*;
value2B0B&linear/linear_model/occupation/weights*
_output_shapes
:
z
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*$
valueBB100 1 0,100:0,1*
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes

:d
ю
save/Assign_22Assign-linear/linear_model/occupation/weights/part_0save/RestoreV2_22*
validate_shape(*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
use_locking(*
T0*
_output_shapes

:d

save/RestoreV2_23/tensor_namesConst*
dtype0*=
value4B2B(linear/linear_model/relationship/weights*
_output_shapes
:
v
"save/RestoreV2_23/shape_and_slicesConst*
dtype0* 
valueBB6 1 0,6:0,1*
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes

:
ђ
save/Assign_23Assign/linear/linear_model/relationship/weights/part_0save/RestoreV2_23*
validate_shape(*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_24/tensor_namesConst*
dtype0*:
value1B/B%linear/linear_model/workclass/weights*
_output_shapes
:
v
"save/RestoreV2_24/shape_and_slicesConst*
dtype0* 
valueBB9 1 0,9:0,1*
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes

:	
ь
save/Assign_24Assign,linear/linear_model/workclass/weights/part_0save/RestoreV2_24*
validate_shape(*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
use_locking(*
T0*
_output_shapes

:	
З
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24
-
save/restore_allNoOp^save/restore_shard

initNoOp
Я
init_all_tablesNoOpf^dnn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/table_init`^dnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_table/table_initp^dnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/table_init\^dnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_table/table_initl^dnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/table_initf^dnn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/table_initY^linear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_table/table_initE^linear/linear_model/education/education_lookup/hash_table/table_init?^linear/linear_model/gender/gender_lookup/hash_table/table_initO^linear/linear_model/marital_status/marital_status_lookup/hash_table/table_initK^linear/linear_model/relationship/relationship_lookup/hash_table/table_initE^linear/linear_model/workclass/workclass_lookup/hash_table/table_init
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_c526f1fecb4c49fea39d68ec5036c185/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst*
dtype0*Я
valueХBТBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBUdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weightsBQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_stepB*linear/linear_model/age_bucketized/weightsB>linear/linear_model/age_bucketized_X_occupation_X_race/weightsB linear/linear_model/bias_weightsB%linear/linear_model/education/weightsB2linear/linear_model/education_X_occupation/weightsB"linear/linear_model/gender/weightsB*linear/linear_model/marital_status/weightsB*linear/linear_model/native_country/weightsB7linear/linear_model/native_country_X_occupation/weightsB&linear/linear_model/occupation/weightsB(linear/linear_model/relationship/weightsB%linear/linear_model/workclass/weights*
_output_shapes
:
Ю
save_1/SaveV2/shape_and_slicesConst*
dtype0*ћ
valueёBюB	100 0,100B66 100 0,66:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B100 8 0,100:0,8B100 8 0,100:0,8B1 0,1B34 1 0,34:0,1B B11 1 0,11:0,1B1000000 1 0,1000000:0,1B1 0,1B16 1 0,16:0,1B10000 1 0,10000:0,1B2 1 0,2:0,1B7 1 0,7:0,1B100 1 0,100:0,1B10000 1 0,10000:0,1B100 1 0,100:0,1B6 1 0,6:0,1B9 1 0,9:0,1*
_output_shapes
:
ю

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices"dnn/hiddenlayer_0/bias/part_0/read$dnn/hiddenlayer_0/kernel/part_0/read"dnn/hiddenlayer_1/bias/part_0/read$dnn/hiddenlayer_1/kernel/part_0/read"dnn/hiddenlayer_2/bias/part_0/read$dnn/hiddenlayer_2/kernel/part_0/read"dnn/hiddenlayer_3/bias/part_0/read$dnn/hiddenlayer_3/kernel/part_0/readadnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/read]dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/readdnn/logits/bias/part_0/readdnn/logits/kernel/part_0/readglobal_step6linear/linear_model/age_bucketized/weights/part_0/readJlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/read,linear/linear_model/bias_weights/part_0/read1linear/linear_model/education/weights/part_0/read>linear/linear_model/education_X_occupation/weights/part_0/read.linear/linear_model/gender/weights/part_0/read6linear/linear_model/marital_status/weights/part_0/read6linear/linear_model/native_country/weights/part_0/readClinear/linear_model/native_country_X_occupation/weights/part_0/read2linear/linear_model/occupation/weights/part_0/read4linear/linear_model/relationship/weights/part_0/read1linear/linear_model/workclass/weights/part_0/read*'
dtypes
2	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
Ѓ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
T0*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
|
save_1/RestoreV2/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_0/bias*
_output_shapes
:
s
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueBB	100 0,100*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:d
Ш
save_1/AssignAssigndnn/hiddenlayer_0/bias/part_0save_1/RestoreV2*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
use_locking(*
T0*
_output_shapes
:d

save_1/RestoreV2_1/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_0/kernel*
_output_shapes
:
}
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*&
valueBB66 100 0,66:0,100*
_output_shapes
:
Є
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:Bd
д
save_1/Assign_1Assigndnn/hiddenlayer_0/kernel/part_0save_1/RestoreV2_1*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
use_locking(*
T0*
_output_shapes

:Bd
~
save_1/RestoreV2_2/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_1/bias*
_output_shapes
:
s
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueBB70 0,70*
_output_shapes
:
 
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:F
Ь
save_1/Assign_2Assigndnn/hiddenlayer_1/bias/part_0save_1/RestoreV2_2*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
use_locking(*
T0*
_output_shapes
:F

save_1/RestoreV2_3/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_1/kernel*
_output_shapes
:
}
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*&
valueBB100 70 0,100:0,70*
_output_shapes
:
Є
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:dF
д
save_1/Assign_3Assigndnn/hiddenlayer_1/kernel/part_0save_1/RestoreV2_3*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
use_locking(*
T0*
_output_shapes

:dF
~
save_1/RestoreV2_4/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_2/bias*
_output_shapes
:
s
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueBB48 0,48*
_output_shapes
:
 
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:0
Ь
save_1/Assign_4Assigndnn/hiddenlayer_2/bias/part_0save_1/RestoreV2_4*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
use_locking(*
T0*
_output_shapes
:0

save_1/RestoreV2_5/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_2/kernel*
_output_shapes
:
{
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*$
valueBB70 48 0,70:0,48*
_output_shapes
:
Є
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:F0
д
save_1/Assign_5Assigndnn/hiddenlayer_2/kernel/part_0save_1/RestoreV2_5*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
use_locking(*
T0*
_output_shapes

:F0
~
save_1/RestoreV2_6/tensor_namesConst*
dtype0*+
value"B Bdnn/hiddenlayer_3/bias*
_output_shapes
:
s
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueBB34 0,34*
_output_shapes
:
 
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:"
Ь
save_1/Assign_6Assigndnn/hiddenlayer_3/bias/part_0save_1/RestoreV2_6*
validate_shape(*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
use_locking(*
T0*
_output_shapes
:"

save_1/RestoreV2_7/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_3/kernel*
_output_shapes
:
{
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*$
valueBB48 34 0,48:0,34*
_output_shapes
:
Є
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:0"
д
save_1/Assign_7Assigndnn/hiddenlayer_3/kernel/part_0save_1/RestoreV2_7*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
use_locking(*
T0*
_output_shapes

:0"
Н
save_1/RestoreV2_8/tensor_namesConst*
dtype0*j
valueaB_BUdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights*
_output_shapes
:
{
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*$
valueBB100 8 0,100:0,8*
_output_shapes
:
Є
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes

:d
Ю
save_1/Assign_8Assign\dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0save_1/RestoreV2_8*
validate_shape(*o
_classe
caloc:@dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0*
use_locking(*
T0*
_output_shapes

:d
Й
save_1/RestoreV2_9/tensor_namesConst*
dtype0*f
value]B[BQdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights*
_output_shapes
:
{
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*$
valueBB100 8 0,100:0,8*
_output_shapes
:
Є
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes

:d
Ц
save_1/Assign_9AssignXdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0save_1/RestoreV2_9*
validate_shape(*k
_classa
_]loc:@dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0*
use_locking(*
T0*
_output_shapes

:d
x
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*$
valueBBdnn/logits/bias*
_output_shapes
:
r
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
Ѓ
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save_1/Assign_10Assigndnn/logits/bias/part_0save_1/RestoreV2_10*
validate_shape(*)
_class
loc:@dnn/logits/bias/part_0*
use_locking(*
T0*
_output_shapes
:
z
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*&
valueBBdnn/logits/kernel*
_output_shapes
:
z
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*"
valueBB34 1 0,34:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes

:"
Ш
save_1/Assign_11Assigndnn/logits/kernel/part_0save_1/RestoreV2_11*
validate_shape(*+
_class!
loc:@dnn/logits/kernel/part_0*
use_locking(*
T0*
_output_shapes

:"
t
 save_1/RestoreV2_12/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ё
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2	*
_output_shapes
:
І
save_1/Assign_12Assignglobal_stepsave_1/RestoreV2_12*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 

 save_1/RestoreV2_13/tensor_namesConst*
dtype0*?
value6B4B*linear/linear_model/age_bucketized/weights*
_output_shapes
:
z
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*"
valueBB11 1 0,11:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes

:
њ
save_1/Assign_13Assign1linear/linear_model/age_bucketized/weights/part_0save_1/RestoreV2_13*
validate_shape(*D
_class:
86loc:@linear/linear_model/age_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Ї
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*S
valueJBHB>linear/linear_model/age_bucketized_X_occupation_X_race/weights*
_output_shapes
:

$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*,
value#B!B1000000 1 0,1000000:0,1*
_output_shapes
:
Љ
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2* 
_output_shapes
:
Р=
Є
save_1/Assign_14AssignElinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0save_1/RestoreV2_14*
validate_shape(*X
_classN
LJloc:@linear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0*
use_locking(*
T0* 
_output_shapes
:
Р=

 save_1/RestoreV2_15/tensor_namesConst*
dtype0*5
value,B*B linear/linear_model/bias_weights*
_output_shapes
:
r
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
Ѓ
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
т
save_1/Assign_15Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2_15*
validate_shape(*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
use_locking(*
T0*
_output_shapes
:

 save_1/RestoreV2_16/tensor_namesConst*
dtype0*:
value1B/B%linear/linear_model/education/weights*
_output_shapes
:
z
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*"
valueBB16 1 0,16:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes

:
№
save_1/Assign_16Assign,linear/linear_model/education/weights/part_0save_1/RestoreV2_16*
validate_shape(*?
_class5
31loc:@linear/linear_model/education/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_17/tensor_namesConst*
dtype0*G
value>B<B2linear/linear_model/education_X_occupation/weights*
_output_shapes
:

$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*(
valueBB10000 1 0,10000:0,1*
_output_shapes
:
Ј
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:	N

save_1/Assign_17Assign9linear/linear_model/education_X_occupation/weights/part_0save_1/RestoreV2_17*
validate_shape(*L
_classB
@>loc:@linear/linear_model/education_X_occupation/weights/part_0*
use_locking(*
T0*
_output_shapes
:	N

 save_1/RestoreV2_18/tensor_namesConst*
dtype0*7
value.B,B"linear/linear_model/gender/weights*
_output_shapes
:
x
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0* 
valueBB2 1 0,2:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes

:
ъ
save_1/Assign_18Assign)linear/linear_model/gender/weights/part_0save_1/RestoreV2_18*
validate_shape(*<
_class2
0.loc:@linear/linear_model/gender/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_19/tensor_namesConst*
dtype0*?
value6B4B*linear/linear_model/marital_status/weights*
_output_shapes
:
x
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0* 
valueBB7 1 0,7:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes

:
њ
save_1/Assign_19Assign1linear/linear_model/marital_status/weights/part_0save_1/RestoreV2_19*
validate_shape(*D
_class:
86loc:@linear/linear_model/marital_status/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_20/tensor_namesConst*
dtype0*?
value6B4B*linear/linear_model/native_country/weights*
_output_shapes
:
|
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*$
valueBB100 1 0,100:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes

:d
њ
save_1/Assign_20Assign1linear/linear_model/native_country/weights/part_0save_1/RestoreV2_20*
validate_shape(*D
_class:
86loc:@linear/linear_model/native_country/weights/part_0*
use_locking(*
T0*
_output_shapes

:d
 
 save_1/RestoreV2_21/tensor_namesConst*
dtype0*L
valueCBAB7linear/linear_model/native_country_X_occupation/weights*
_output_shapes
:

$save_1/RestoreV2_21/shape_and_slicesConst*
dtype0*(
valueBB10000 1 0,10000:0,1*
_output_shapes
:
Ј
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:	N

save_1/Assign_21Assign>linear/linear_model/native_country_X_occupation/weights/part_0save_1/RestoreV2_21*
validate_shape(*Q
_classG
ECloc:@linear/linear_model/native_country_X_occupation/weights/part_0*
use_locking(*
T0*
_output_shapes
:	N

 save_1/RestoreV2_22/tensor_namesConst*
dtype0*;
value2B0B&linear/linear_model/occupation/weights*
_output_shapes
:
|
$save_1/RestoreV2_22/shape_and_slicesConst*
dtype0*$
valueBB100 1 0,100:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes

:d
ђ
save_1/Assign_22Assign-linear/linear_model/occupation/weights/part_0save_1/RestoreV2_22*
validate_shape(*@
_class6
42loc:@linear/linear_model/occupation/weights/part_0*
use_locking(*
T0*
_output_shapes

:d

 save_1/RestoreV2_23/tensor_namesConst*
dtype0*=
value4B2B(linear/linear_model/relationship/weights*
_output_shapes
:
x
$save_1/RestoreV2_23/shape_and_slicesConst*
dtype0* 
valueBB6 1 0,6:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes

:
і
save_1/Assign_23Assign/linear/linear_model/relationship/weights/part_0save_1/RestoreV2_23*
validate_shape(*B
_class8
64loc:@linear/linear_model/relationship/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_24/tensor_namesConst*
dtype0*:
value1B/B%linear/linear_model/workclass/weights*
_output_shapes
:
x
$save_1/RestoreV2_24/shape_and_slicesConst*
dtype0* 
valueBB9 1 0,9:0,1*
_output_shapes
:
Ї
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes

:	
№
save_1/Assign_24Assign,linear/linear_model/workclass/weights/part_0save_1/RestoreV2_24*
validate_shape(*?
_class5
31loc:@linear/linear_model/workclass/weights/part_0*
use_locking(*
T0*
_output_shapes

:	
ы
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
global_step

global_step:0"Э4
trainable_variablesЕ4В4

^dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0:0cdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Assigncdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/read:0"c
Udnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weightsd  "d2{dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ј
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"_
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsd  "d2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
й
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernelBd  "Bd2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
й
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneldF  "dF2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/biasF "F21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
й
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernelF0  "F02<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias0 "021dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
й
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign&dnn/hiddenlayer_3/kernel/part_0/read:0"&
dnn/hiddenlayer_3/kernel0"  "0"2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign$dnn/hiddenlayer_3/bias/part_0/read:0"!
dnn/hiddenlayer_3/bias" ""21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:0
Ж
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel"  ""25dnn/logits/kernel/part_0/Initializer/random_uniform:0
 
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0
Њ
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/Assign8linear/linear_model/age_bucketized/weights/part_0/read:0"8
*linear/linear_model/age_bucketized/weights  "2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:0

Glinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0:0Llinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/AssignLlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/read:0"P
>linear/linear_model/age_bucketized_X_occupation_X_race/weightsР=  "Р=2Ylinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros:0

.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/Assign3linear/linear_model/education/weights/part_0/read:0"3
%linear/linear_model/education/weights  "2@linear/linear_model/education/weights/part_0/Initializer/zeros:0
д
;linear/linear_model/education_X_occupation/weights/part_0:0@linear/linear_model/education_X_occupation/weights/part_0/Assign@linear/linear_model/education_X_occupation/weights/part_0/read:0"B
2linear/linear_model/education_X_occupation/weightsN  "N2Mlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros:0

+linear/linear_model/gender/weights/part_0:00linear/linear_model/gender/weights/part_0/Assign0linear/linear_model/gender/weights/part_0/read:0"0
"linear/linear_model/gender/weights  "2=linear/linear_model/gender/weights/part_0/Initializer/zeros:0
Њ
3linear/linear_model/marital_status/weights/part_0:08linear/linear_model/marital_status/weights/part_0/Assign8linear/linear_model/marital_status/weights/part_0/read:0"8
*linear/linear_model/marital_status/weights  "2Elinear/linear_model/marital_status/weights/part_0/Initializer/zeros:0
Њ
3linear/linear_model/native_country/weights/part_0:08linear/linear_model/native_country/weights/part_0/Assign8linear/linear_model/native_country/weights/part_0/read:0"8
*linear/linear_model/native_country/weightsd  "d2Elinear/linear_model/native_country/weights/part_0/Initializer/zeros:0
э
@linear/linear_model/native_country_X_occupation/weights/part_0:0Elinear/linear_model/native_country_X_occupation/weights/part_0/AssignElinear/linear_model/native_country_X_occupation/weights/part_0/read:0"G
7linear/linear_model/native_country_X_occupation/weightsN  "N2Rlinear/linear_model/native_country_X_occupation/weights/part_0/Initializer/zeros:0

/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/Assign4linear/linear_model/occupation/weights/part_0/read:0"4
&linear/linear_model/occupation/weightsd  "d2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/Assign6linear/linear_model/relationship/weights/part_0/read:0"6
(linear/linear_model/relationship/weights  "2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:0

.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/Assign3linear/linear_model/workclass/weights/part_0/read:0"3
%linear/linear_model/workclass/weights	  "	2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:0
ѕ
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"5
	variables55
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0

^dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0:0cdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Assigncdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/read:0"c
Udnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weightsd  "d2{dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ј
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"_
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsd  "d2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
й
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign&dnn/hiddenlayer_0/kernel/part_0/read:0"&
dnn/hiddenlayer_0/kernelBd  "Bd2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign$dnn/hiddenlayer_0/bias/part_0/read:0"!
dnn/hiddenlayer_0/biasd "d21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:0
й
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign&dnn/hiddenlayer_1/kernel/part_0/read:0"&
dnn/hiddenlayer_1/kerneldF  "dF2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign$dnn/hiddenlayer_1/bias/part_0/read:0"!
dnn/hiddenlayer_1/biasF "F21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:0
й
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign&dnn/hiddenlayer_2/kernel/part_0/read:0"&
dnn/hiddenlayer_2/kernelF0  "F02<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign$dnn/hiddenlayer_2/bias/part_0/read:0"!
dnn/hiddenlayer_2/bias0 "021dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:0
й
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign&dnn/hiddenlayer_3/kernel/part_0/read:0"&
dnn/hiddenlayer_3/kernel0"  "0"2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:0
У
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign$dnn/hiddenlayer_3/bias/part_0/read:0"!
dnn/hiddenlayer_3/bias" ""21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:0
Ж
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assigndnn/logits/kernel/part_0/read:0"
dnn/logits/kernel"  ""25dnn/logits/kernel/part_0/Initializer/random_uniform:0
 
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assigndnn/logits/bias/part_0/read:0"
dnn/logits/bias "2*dnn/logits/bias/part_0/Initializer/zeros:0
Њ
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/Assign8linear/linear_model/age_bucketized/weights/part_0/read:0"8
*linear/linear_model/age_bucketized/weights  "2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:0

Glinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0:0Llinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/AssignLlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/read:0"P
>linear/linear_model/age_bucketized_X_occupation_X_race/weightsР=  "Р=2Ylinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros:0

.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/Assign3linear/linear_model/education/weights/part_0/read:0"3
%linear/linear_model/education/weights  "2@linear/linear_model/education/weights/part_0/Initializer/zeros:0
д
;linear/linear_model/education_X_occupation/weights/part_0:0@linear/linear_model/education_X_occupation/weights/part_0/Assign@linear/linear_model/education_X_occupation/weights/part_0/read:0"B
2linear/linear_model/education_X_occupation/weightsN  "N2Mlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros:0

+linear/linear_model/gender/weights/part_0:00linear/linear_model/gender/weights/part_0/Assign0linear/linear_model/gender/weights/part_0/read:0"0
"linear/linear_model/gender/weights  "2=linear/linear_model/gender/weights/part_0/Initializer/zeros:0
Њ
3linear/linear_model/marital_status/weights/part_0:08linear/linear_model/marital_status/weights/part_0/Assign8linear/linear_model/marital_status/weights/part_0/read:0"8
*linear/linear_model/marital_status/weights  "2Elinear/linear_model/marital_status/weights/part_0/Initializer/zeros:0
Њ
3linear/linear_model/native_country/weights/part_0:08linear/linear_model/native_country/weights/part_0/Assign8linear/linear_model/native_country/weights/part_0/read:0"8
*linear/linear_model/native_country/weightsd  "d2Elinear/linear_model/native_country/weights/part_0/Initializer/zeros:0
э
@linear/linear_model/native_country_X_occupation/weights/part_0:0Elinear/linear_model/native_country_X_occupation/weights/part_0/AssignElinear/linear_model/native_country_X_occupation/weights/part_0/read:0"G
7linear/linear_model/native_country_X_occupation/weightsN  "N2Rlinear/linear_model/native_country_X_occupation/weights/part_0/Initializer/zeros:0

/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/Assign4linear/linear_model/occupation/weights/part_0/read:0"4
&linear/linear_model/occupation/weightsd  "d2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/Assign6linear/linear_model/relationship/weights/part_0/read:0"6
(linear/linear_model/relationship/weights  "2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:0

.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/Assign3linear/linear_model/workclass/weights/part_0/read:0"3
%linear/linear_model/workclass/weights	  "	2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:0
ѕ
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0"Х
table_initializerЏ
Ќ
ednn/input_from_feature_columns/input_layer/education_indicator/education_lookup/hash_table/table_init
_dnn/input_from_feature_columns/input_layer/gender_indicator/gender_lookup/hash_table/table_init
odnn/input_from_feature_columns/input_layer/marital_status_indicator/marital_status_lookup/hash_table/table_init
[dnn/input_from_feature_columns/input_layer/race_indicator/race_lookup/hash_table/table_init
kdnn/input_from_feature_columns/input_layer/relationship_indicator/relationship_lookup/hash_table/table_init
ednn/input_from_feature_columns/input_layer/workclass_indicator/workclass_lookup/hash_table/table_init
Xlinear/linear_model/age_bucketized_X_occupation_X_race/race_lookup/hash_table/table_init
Dlinear/linear_model/education/education_lookup/hash_table/table_init
>linear/linear_model/gender/gender_lookup/hash_table/table_init
Nlinear/linear_model/marital_status/marital_status_lookup/hash_table/table_init
Jlinear/linear_model/relationship/relationship_lookup/hash_table/table_init
Dlinear/linear_model/workclass/workclass_lookup/hash_table/table_init" 
legacy_init_op


group_deps"ё
	summariesу
р
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"х$
model_variablesб$Ю$

^dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0:0cdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Assigncdnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/read:0"c
Udnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weightsd  "d2{dnn/input_from_feature_columns/input_layer/native_country_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
ј
Zdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0:0_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Assign_dnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/read:0"_
Qdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weightsd  "d2wdnn/input_from_feature_columns/input_layer/occupation_embedding/embedding_weights/part_0/Initializer/truncated_normal:0
Њ
3linear/linear_model/age_bucketized/weights/part_0:08linear/linear_model/age_bucketized/weights/part_0/Assign8linear/linear_model/age_bucketized/weights/part_0/read:0"8
*linear/linear_model/age_bucketized/weights  "2Elinear/linear_model/age_bucketized/weights/part_0/Initializer/zeros:0

Glinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0:0Llinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/AssignLlinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/read:0"P
>linear/linear_model/age_bucketized_X_occupation_X_race/weightsР=  "Р=2Ylinear/linear_model/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros:0

.linear/linear_model/education/weights/part_0:03linear/linear_model/education/weights/part_0/Assign3linear/linear_model/education/weights/part_0/read:0"3
%linear/linear_model/education/weights  "2@linear/linear_model/education/weights/part_0/Initializer/zeros:0
д
;linear/linear_model/education_X_occupation/weights/part_0:0@linear/linear_model/education_X_occupation/weights/part_0/Assign@linear/linear_model/education_X_occupation/weights/part_0/read:0"B
2linear/linear_model/education_X_occupation/weightsN  "N2Mlinear/linear_model/education_X_occupation/weights/part_0/Initializer/zeros:0

+linear/linear_model/gender/weights/part_0:00linear/linear_model/gender/weights/part_0/Assign0linear/linear_model/gender/weights/part_0/read:0"0
"linear/linear_model/gender/weights  "2=linear/linear_model/gender/weights/part_0/Initializer/zeros:0
Њ
3linear/linear_model/marital_status/weights/part_0:08linear/linear_model/marital_status/weights/part_0/Assign8linear/linear_model/marital_status/weights/part_0/read:0"8
*linear/linear_model/marital_status/weights  "2Elinear/linear_model/marital_status/weights/part_0/Initializer/zeros:0
Њ
3linear/linear_model/native_country/weights/part_0:08linear/linear_model/native_country/weights/part_0/Assign8linear/linear_model/native_country/weights/part_0/read:0"8
*linear/linear_model/native_country/weightsd  "d2Elinear/linear_model/native_country/weights/part_0/Initializer/zeros:0
э
@linear/linear_model/native_country_X_occupation/weights/part_0:0Elinear/linear_model/native_country_X_occupation/weights/part_0/AssignElinear/linear_model/native_country_X_occupation/weights/part_0/read:0"G
7linear/linear_model/native_country_X_occupation/weightsN  "N2Rlinear/linear_model/native_country_X_occupation/weights/part_0/Initializer/zeros:0

/linear/linear_model/occupation/weights/part_0:04linear/linear_model/occupation/weights/part_0/Assign4linear/linear_model/occupation/weights/part_0/read:0"4
&linear/linear_model/occupation/weightsd  "d2Alinear/linear_model/occupation/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/relationship/weights/part_0:06linear/linear_model/relationship/weights/part_0/Assign6linear/linear_model/relationship/weights/part_0/read:0"6
(linear/linear_model/relationship/weights  "2Clinear/linear_model/relationship/weights/part_0/Initializer/zeros:0

.linear/linear_model/workclass/weights/part_0:03linear/linear_model/workclass/weights/part_0/Assign3linear/linear_model/workclass/weights/part_0/read:0"3
%linear/linear_model/workclass/weights	  "	2@linear/linear_model/workclass/weights/part_0/Initializer/zeros:0
ѕ
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0*§
predictё
5
hours_per_week#
Placeholder_12:0џџџџџџџџџ
/
	workclass"
Placeholder_5:0џџџџџџџџџ
2
relationship"
Placeholder_4:0џџџџџџџџџ
*
gender 
Placeholder:0џџџџџџџџџ
)
age"
Placeholder_8:0џџџџџџџџџ
4
marital_status"
Placeholder_3:0џџџџџџџџџ
*
race"
Placeholder_1:0џџџџџџџџџ
3
education_num"
Placeholder_9:0џџџџџџџџџ
4
native_country"
Placeholder_7:0џџџџџџџџџ
3
capital_loss#
Placeholder_11:0џџџџџџџџџ
/
	education"
Placeholder_2:0џџџџџџџџџ
3
capital_gain#
Placeholder_10:0џџџџџџџџџ
0

occupation"
Placeholder_6:0џџџџџџџџџH
probabilities7
 head/predictions/probabilities:0џџџџџџџџџ:
logits0
head/predictions/logits:0џџџџџџџџџ@
classes5
head/predictions/str_classes:0џџџџџџџџџ>
	class_ids1
head/predictions/classes:0	џџџџџџџџџ>
logistic2
head/predictions/logistic:0џџџџџџџџџtensorflow/serving/predict