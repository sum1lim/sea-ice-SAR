є¤
ѓТ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
о
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
└
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.8.02unknown8чН
є
conv3d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_4/kernel

#conv3d_4/kernel/Read/ReadVariableOpReadVariableOpconv3d_4/kernel**
_output_shapes
:*
dtype0
r
conv3d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_4/bias
k
!conv3d_4/bias/Read/ReadVariableOpReadVariableOpconv3d_4/bias*
_output_shapes
:*
dtype0
є
conv3d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_5/kernel

#conv3d_5/kernel/Read/ReadVariableOpReadVariableOpconv3d_5/kernel**
_output_shapes
:*
dtype0
r
conv3d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_5/bias
k
!conv3d_5/bias/Read/ReadVariableOpReadVariableOpconv3d_5/bias*
_output_shapes
:*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&L* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:&L*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:L*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:LL*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:L*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:LL*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:L*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:LL*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:L*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:LL*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:L*
dtype0
z
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L* 
shared_namedense_17/kernel
s
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes

:L*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
ћ
Adam/conv3d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_4/kernel/m
Ї
*Adam/conv3d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_4/kernel/m**
_output_shapes
:*
dtype0
ђ
Adam/conv3d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_4/bias/m
y
(Adam/conv3d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_4/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/conv3d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_5/kernel/m
Ї
*Adam/conv3d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/kernel/m**
_output_shapes
:*
dtype0
ђ
Adam/conv3d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_5/bias/m
y
(Adam/conv3d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/bias/m*
_output_shapes
:*
dtype0
ѕ
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&L*'
shared_nameAdam/dense_12/kernel/m
Ђ
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:&L*
dtype0
ђ
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_13/kernel/m
Ђ
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_14/kernel/m
Ђ
*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_15/kernel/m
Ђ
*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_16/kernel/m
Ђ
*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_16/bias/m
y
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*'
shared_nameAdam/dense_17/kernel/m
Ђ
*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes

:L*
dtype0
ђ
Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0
ћ
Adam/conv3d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_4/kernel/v
Ї
*Adam/conv3d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_4/kernel/v**
_output_shapes
:*
dtype0
ђ
Adam/conv3d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_4/bias/v
y
(Adam/conv3d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_4/bias/v*
_output_shapes
:*
dtype0
ћ
Adam/conv3d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_5/kernel/v
Ї
*Adam/conv3d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/kernel/v**
_output_shapes
:*
dtype0
ђ
Adam/conv3d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_5/bias/v
y
(Adam/conv3d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_5/bias/v*
_output_shapes
:*
dtype0
ѕ
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&L*'
shared_nameAdam/dense_12/kernel/v
Ђ
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:&L*
dtype0
ђ
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_13/kernel/v
Ђ
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_14/kernel/v
Ђ
*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_15/kernel/v
Ђ
*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_16/kernel/v
Ђ
*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes

:LL*
dtype0
ђ
Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_16/bias/v
y
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes
:L*
dtype0
ѕ
Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*'
shared_nameAdam/dense_17/kernel/v
Ђ
*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes

:L*
dtype0
ђ
Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Љx
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╠w
value┬wB┐w BИw
С
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
ј
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
д

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
ј
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
д

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
ј
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
* 
ј
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
ј
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
д

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
д

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
д

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
д

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses*
д

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
д

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
ё
witer

xbeta_1

ybeta_2
	zdecay
{learning_ratemн mН-mо.mОGmпHm┘Om┌Pm█Wm▄XmП_mя`m▀gmЯhmрomРpmсvС vт-vТ.vуGvУHvжOvЖPvвWvВXvь_vЬ`v№gv­hvыovЫpvз*
z
0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15*
z
0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15*
* 
▒
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
ђlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Ђserving_default* 
* 
* 
* 
ќ
ѓnon_trainable_variables
Ѓlayers
ёmetrics
 Ёlayer_regularization_losses
єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv3d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
ў
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ќ
їnon_trainable_variables
Їlayers
јmetrics
 Јlayer_regularization_losses
љlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv3d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
ў
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ќ
ќnon_trainable_variables
Ќlayers
ўmetrics
 Ўlayer_regularization_losses
џlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
ќ
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
ќ
аnon_trainable_variables
Аlayers
бmetrics
 Бlayer_regularization_losses
цlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 
ў
Цnon_trainable_variables
дlayers
Дmetrics
 еlayer_regularization_losses
Еlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 
ў
фnon_trainable_variables
Фlayers
гmetrics
 Гlayer_regularization_losses
«layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

W0
X1*

W0
X1*
* 
ў
»non_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

_0
`1*

_0
`1*
* 
ў
┤non_trainable_variables
хlayers
Хmetrics
 иlayer_regularization_losses
Иlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 
ў
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 
ў
Йnon_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

├0
─1
┼2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

кtotal

Кcount
╚	variables
╔	keras_api*
M

╩total

╦count
╠
_fn_kwargs
═	variables
╬	keras_api*
M

¤total

лcount
Л
_fn_kwargs
м	variables
М	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

к0
К1*

╚	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

╩0
╦1*

═	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

¤0
л1*

м	variables*
ѓ|
VARIABLE_VALUEAdam/conv3d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/conv3d_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_16/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_16/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/conv3d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/conv3d_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_16/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_16/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ѓ|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
v
serving_default_catPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Ј
serving_default_convPlaceholder*3
_output_shapes!
:         *
dtype0*(
shape:         
ж
StatefulPartitionedCallStatefulPartitionedCallserving_default_catserving_default_convconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *.
f)R'
%__inference_signature_wrapper_1368277
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
═
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv3d_4/kernel/Read/ReadVariableOp!conv3d_4/bias/Read/ReadVariableOp#conv3d_5/kernel/Read/ReadVariableOp!conv3d_5/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp*Adam/conv3d_4/kernel/m/Read/ReadVariableOp(Adam/conv3d_4/bias/m/Read/ReadVariableOp*Adam/conv3d_5/kernel/m/Read/ReadVariableOp(Adam/conv3d_5/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp*Adam/conv3d_4/kernel/v/Read/ReadVariableOp(Adam/conv3d_4/bias/v/Read/ReadVariableOp*Adam/conv3d_5/kernel/v/Read/ReadVariableOp(Adam/conv3d_5/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOpConst*H
TinA
?2=	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__traced_save_1368692
г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_4/kernelconv3d_4/biasconv3d_5/kernelconv3d_5/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biasdense_16/kerneldense_16/biasdense_17/kerneldense_17/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/conv3d_4/kernel/mAdam/conv3d_4/bias/mAdam/conv3d_5/kernel/mAdam/conv3d_5/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/mAdam/dense_17/kernel/mAdam/dense_17/bias/mAdam/conv3d_4/kernel/vAdam/conv3d_4/bias/vAdam/conv3d_5/kernel/vAdam/conv3d_5/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/vAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/vAdam/dense_17/kernel/vAdam/dense_17/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference__traced_restore_1368879ч─	
ы
M
1__inference_max_pooling3d_5_layer_call_fn_1368343

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1367459љ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
├
v
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1368372
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         &W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         &"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
ђs
ж
 __inference__traced_save_1368692
file_prefix.
*savev2_conv3d_4_kernel_read_readvariableop,
(savev2_conv3d_4_bias_read_readvariableop.
*savev2_conv3d_5_kernel_read_readvariableop,
(savev2_conv3d_5_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop5
1savev2_adam_conv3d_4_kernel_m_read_readvariableop3
/savev2_adam_conv3d_4_bias_m_read_readvariableop5
1savev2_adam_conv3d_5_kernel_m_read_readvariableop3
/savev2_adam_conv3d_5_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop5
1savev2_adam_conv3d_4_kernel_v_read_readvariableop3
/savev2_adam_conv3d_4_bias_v_read_readvariableop5
1savev2_adam_conv3d_5_kernel_v_read_readvariableop3
/savev2_adam_conv3d_5_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ѓ!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*г 
valueб BЪ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHУ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Ї
valueЃBђ<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ч
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv3d_4_kernel_read_readvariableop(savev2_conv3d_4_bias_read_readvariableop*savev2_conv3d_5_kernel_read_readvariableop(savev2_conv3d_5_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop1savev2_adam_conv3d_4_kernel_m_read_readvariableop/savev2_adam_conv3d_4_bias_m_read_readvariableop1savev2_adam_conv3d_5_kernel_m_read_readvariableop/savev2_adam_conv3d_5_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop1savev2_adam_conv3d_4_kernel_v_read_readvariableop/savev2_adam_conv3d_4_bias_v_read_readvariableop1savev2_adam_conv3d_5_kernel_v_read_readvariableop/savev2_adam_conv3d_5_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*э
_input_shapesт
Р: :::::&L:L:LL:L:LL:L:LL:L:LL:L:L:: : : : : : : : : : : :::::&L:L:LL:L:LL:L:LL:L:LL:L:L::::::&L:L:LL:L:LL:L:LL:L:LL:L:L:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:&L: 

_output_shapes
:L:$ 

_output_shapes

:LL: 

_output_shapes
:L:$	 

_output_shapes

:LL: 


_output_shapes
:L:$ 

_output_shapes

:LL: 

_output_shapes
:L:$ 

_output_shapes

:LL: 

_output_shapes
:L:$ 

_output_shapes

:L: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$  

_output_shapes

:&L: !

_output_shapes
:L:$" 

_output_shapes

:LL: #

_output_shapes
:L:$$ 

_output_shapes

:LL: %

_output_shapes
:L:$& 

_output_shapes

:LL: '

_output_shapes
:L:$( 

_output_shapes

:LL: )

_output_shapes
:L:$* 

_output_shapes

:L: +

_output_shapes
::0,,
*
_output_shapes
:: -

_output_shapes
::0.,
*
_output_shapes
:: /

_output_shapes
::$0 

_output_shapes

:&L: 1

_output_shapes
:L:$2 

_output_shapes

:LL: 3

_output_shapes
:L:$4 

_output_shapes

:LL: 5

_output_shapes
:L:$6 

_output_shapes

:LL: 7

_output_shapes
:L:$8 

_output_shapes

:LL: 9

_output_shapes
:L:$: 

_output_shapes

:L: ;

_output_shapes
::<

_output_shapes
: 
ож
ь#
#__inference__traced_restore_1368879
file_prefix>
 assignvariableop_conv3d_4_kernel:.
 assignvariableop_1_conv3d_4_bias:@
"assignvariableop_2_conv3d_5_kernel:.
 assignvariableop_3_conv3d_5_bias:4
"assignvariableop_4_dense_12_kernel:&L.
 assignvariableop_5_dense_12_bias:L4
"assignvariableop_6_dense_13_kernel:LL.
 assignvariableop_7_dense_13_bias:L4
"assignvariableop_8_dense_14_kernel:LL.
 assignvariableop_9_dense_14_bias:L5
#assignvariableop_10_dense_15_kernel:LL/
!assignvariableop_11_dense_15_bias:L5
#assignvariableop_12_dense_16_kernel:LL/
!assignvariableop_13_dense_16_bias:L5
#assignvariableop_14_dense_17_kernel:L/
!assignvariableop_15_dense_17_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: %
assignvariableop_25_total_2: %
assignvariableop_26_count_2: H
*assignvariableop_27_adam_conv3d_4_kernel_m:6
(assignvariableop_28_adam_conv3d_4_bias_m:H
*assignvariableop_29_adam_conv3d_5_kernel_m:6
(assignvariableop_30_adam_conv3d_5_bias_m:<
*assignvariableop_31_adam_dense_12_kernel_m:&L6
(assignvariableop_32_adam_dense_12_bias_m:L<
*assignvariableop_33_adam_dense_13_kernel_m:LL6
(assignvariableop_34_adam_dense_13_bias_m:L<
*assignvariableop_35_adam_dense_14_kernel_m:LL6
(assignvariableop_36_adam_dense_14_bias_m:L<
*assignvariableop_37_adam_dense_15_kernel_m:LL6
(assignvariableop_38_adam_dense_15_bias_m:L<
*assignvariableop_39_adam_dense_16_kernel_m:LL6
(assignvariableop_40_adam_dense_16_bias_m:L<
*assignvariableop_41_adam_dense_17_kernel_m:L6
(assignvariableop_42_adam_dense_17_bias_m:H
*assignvariableop_43_adam_conv3d_4_kernel_v:6
(assignvariableop_44_adam_conv3d_4_bias_v:H
*assignvariableop_45_adam_conv3d_5_kernel_v:6
(assignvariableop_46_adam_conv3d_5_bias_v:<
*assignvariableop_47_adam_dense_12_kernel_v:&L6
(assignvariableop_48_adam_dense_12_bias_v:L<
*assignvariableop_49_adam_dense_13_kernel_v:LL6
(assignvariableop_50_adam_dense_13_bias_v:L<
*assignvariableop_51_adam_dense_14_kernel_v:LL6
(assignvariableop_52_adam_dense_14_bias_v:L<
*assignvariableop_53_adam_dense_15_kernel_v:LL6
(assignvariableop_54_adam_dense_15_bias_v:L<
*assignvariableop_55_adam_dense_16_kernel_v:LL6
(assignvariableop_56_adam_dense_16_bias_v:L<
*assignvariableop_57_adam_dense_17_kernel_v:L6
(assignvariableop_58_adam_dense_17_bias_v:
identity_60ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9є!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*г 
valueб BЪ <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*Ї
valueЃBђ<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ═
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*є
_output_shapesз
­::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_conv3d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv3d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_5_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_5_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_12_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_12_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_13_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_13_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_14_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_14_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_15_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_15_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_16_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_16_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_17_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_17_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:ј
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_conv3d_4_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_conv3d_4_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv3d_5_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv3d_5_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_12_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_12_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_13_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_13_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_14_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_14_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_15_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_15_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_16_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_16_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_17_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_17_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_conv3d_4_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_conv3d_4_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_conv3d_5_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_conv3d_5_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_12_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_12_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_13_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_13_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_14_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_14_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_15_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_15_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_16_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_16_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_17_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_17_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 р

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: ╬

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*І
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
К
Ќ
*__inference_dense_16_layer_call_fn_1368461

inputs
unknown:LL
	unknown_0:L
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1367604o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
К
Ќ
*__inference_dense_15_layer_call_fn_1368441

inputs
unknown:LL
	unknown_0:L
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1367587o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_14_layer_call_and_return_conditional_losses_1367570

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_16_layer_call_and_return_conditional_losses_1367604

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
жP
╗
D__inference_model_2_layer_call_and_return_conditional_losses_1368169
inputs_0
inputs_1E
'conv3d_4_conv3d_readvariableop_resource:6
(conv3d_4_biasadd_readvariableop_resource:E
'conv3d_5_conv3d_readvariableop_resource:6
(conv3d_5_biasadd_readvariableop_resource:9
'dense_12_matmul_readvariableop_resource:&L6
(dense_12_biasadd_readvariableop_resource:L9
'dense_13_matmul_readvariableop_resource:LL6
(dense_13_biasadd_readvariableop_resource:L9
'dense_14_matmul_readvariableop_resource:LL6
(dense_14_biasadd_readvariableop_resource:L9
'dense_15_matmul_readvariableop_resource:LL6
(dense_15_biasadd_readvariableop_resource:L9
'dense_16_matmul_readvariableop_resource:LL6
(dense_16_biasadd_readvariableop_resource:L9
'dense_17_matmul_readvariableop_resource:L6
(dense_17_biasadd_readvariableop_resource:
identityѕбconv3d_4/BiasAdd/ReadVariableOpбconv3d_4/Conv3D/ReadVariableOpбconv3d_5/BiasAdd/ReadVariableOpбconv3d_5/Conv3D/ReadVariableOpбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpбdense_14/MatMul/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpбdense_16/BiasAdd/ReadVariableOpбdense_16/MatMul/ReadVariableOpбdense_17/BiasAdd/ReadVariableOpбdense_17/MatMul/ReadVariableOpќ
zero_padding3d_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_2/PadPadinputs_0&zero_padding3d_2/Pad/paddings:output:0*
T0*3
_output_shapes!
:         њ
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0К
conv3d_4/Conv3DConv3Dzero_padding3d_2/Pad:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
ё
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         n
conv3d_4/ReluReluconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:         Й
max_pooling3d_4/MaxPool3D	MaxPool3Dconv3d_4/Relu:activations:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingSAME*
strides	
њ
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0╠
conv3d_5/Conv3DConv3D"max_pooling3d_4/MaxPool3D:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
ё
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         n
conv3d_5/ReluReluconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:         Й
max_pooling3d_5/MaxPool3D	MaxPool3Dconv3d_5/Relu:activations:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingSAME*
strides	
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ї
flatten_2/ReshapeReshape"max_pooling3d_5/MaxPool3D:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:         [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ц
concatenate_2/concatConcatV2inputs_1flatten_2/Reshape:output:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         &є
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:&L*
dtype0њ
dense_12/MatMulMatMulconcatenate_2/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:L*
dtype0љ
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
л
й
)__inference_model_2_layer_call_fn_1368063
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:&L
	unknown_4:L
	unknown_5:LL
	unknown_6:L
	unknown_7:LL
	unknown_8:L
	unknown_9:LL

unknown_10:L

unknown_11:LL

unknown_12:L

unknown_13:L

unknown_14:
identityѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1367627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
┘
h
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1367447

inputs
identityй
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingSAME*
strides	
і
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
К
Ќ
*__inference_dense_13_layer_call_fn_1368401

inputs
unknown:LL
	unknown_0:L
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1367553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ф
i
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1368288

inputs
identityЁ
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:A                                             ё
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
Ѓ
Б
*__inference_conv3d_4_layer_call_fn_1368297

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1367483{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
жP
╗
D__inference_model_2_layer_call_and_return_conditional_losses_1368237
inputs_0
inputs_1E
'conv3d_4_conv3d_readvariableop_resource:6
(conv3d_4_biasadd_readvariableop_resource:E
'conv3d_5_conv3d_readvariableop_resource:6
(conv3d_5_biasadd_readvariableop_resource:9
'dense_12_matmul_readvariableop_resource:&L6
(dense_12_biasadd_readvariableop_resource:L9
'dense_13_matmul_readvariableop_resource:LL6
(dense_13_biasadd_readvariableop_resource:L9
'dense_14_matmul_readvariableop_resource:LL6
(dense_14_biasadd_readvariableop_resource:L9
'dense_15_matmul_readvariableop_resource:LL6
(dense_15_biasadd_readvariableop_resource:L9
'dense_16_matmul_readvariableop_resource:LL6
(dense_16_biasadd_readvariableop_resource:L9
'dense_17_matmul_readvariableop_resource:L6
(dense_17_biasadd_readvariableop_resource:
identityѕбconv3d_4/BiasAdd/ReadVariableOpбconv3d_4/Conv3D/ReadVariableOpбconv3d_5/BiasAdd/ReadVariableOpбconv3d_5/Conv3D/ReadVariableOpбdense_12/BiasAdd/ReadVariableOpбdense_12/MatMul/ReadVariableOpбdense_13/BiasAdd/ReadVariableOpбdense_13/MatMul/ReadVariableOpбdense_14/BiasAdd/ReadVariableOpбdense_14/MatMul/ReadVariableOpбdense_15/BiasAdd/ReadVariableOpбdense_15/MatMul/ReadVariableOpбdense_16/BiasAdd/ReadVariableOpбdense_16/MatMul/ReadVariableOpбdense_17/BiasAdd/ReadVariableOpбdense_17/MatMul/ReadVariableOpќ
zero_padding3d_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
zero_padding3d_2/PadPadinputs_0&zero_padding3d_2/Pad/paddings:output:0*
T0*3
_output_shapes!
:         њ
conv3d_4/Conv3D/ReadVariableOpReadVariableOp'conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0К
conv3d_4/Conv3DConv3Dzero_padding3d_2/Pad:output:0&conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
ё
conv3d_4/BiasAdd/ReadVariableOpReadVariableOp(conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
conv3d_4/BiasAddBiasAddconv3d_4/Conv3D:output:0'conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         n
conv3d_4/ReluReluconv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:         Й
max_pooling3d_4/MaxPool3D	MaxPool3Dconv3d_4/Relu:activations:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingSAME*
strides	
њ
conv3d_5/Conv3D/ReadVariableOpReadVariableOp'conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0╠
conv3d_5/Conv3DConv3D"max_pooling3d_4/MaxPool3D:output:0&conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
ё
conv3d_5/BiasAdd/ReadVariableOpReadVariableOp(conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ю
conv3d_5/BiasAddBiasAddconv3d_5/Conv3D:output:0'conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         n
conv3d_5/ReluReluconv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:         Й
max_pooling3d_5/MaxPool3D	MaxPool3Dconv3d_5/Relu:activations:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingSAME*
strides	
`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ї
flatten_2/ReshapeReshape"max_pooling3d_5/MaxPool3D:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:         [
concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ц
concatenate_2/concatConcatV2inputs_1flatten_2/Reshape:output:0"concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         &є
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:&L*
dtype0њ
dense_12/MatMulMatMulconcatenate_2/concat:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_15/MatMulMatMuldense_14/Relu:activations:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0љ
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lё
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Љ
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lb
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         Lє
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes

:L*
dtype0љ
dense_17/MatMulMatMuldense_16/Relu:activations:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp ^conv3d_4/BiasAdd/ReadVariableOp^conv3d_4/Conv3D/ReadVariableOp ^conv3d_5/BiasAdd/ReadVariableOp^conv3d_5/Conv3D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2B
conv3d_4/BiasAdd/ReadVariableOpconv3d_4/BiasAdd/ReadVariableOp2@
conv3d_4/Conv3D/ReadVariableOpconv3d_4/Conv3D/ReadVariableOp2B
conv3d_5/BiasAdd/ReadVariableOpconv3d_5/BiasAdd/ReadVariableOp2@
conv3d_5/Conv3D/ReadVariableOpconv3d_5/Conv3D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
К
Ќ
*__inference_dense_12_layer_call_fn_1368381

inputs
unknown:&L
	unknown_0:L
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1367536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         &: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         &
 
_user_specified_nameinputs
К
Ќ
*__inference_dense_17_layer_call_fn_1368481

inputs
unknown:L
	unknown_0:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_1367620o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
Ј
░
%__inference_signature_wrapper_1368277
cat
conv%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:&L
	unknown_4:L
	unknown_5:LL
	unknown_6:L
	unknown_7:LL
	unknown_8:L
	unknown_9:LL

unknown_10:L

unknown_11:LL

unknown_12:L

unknown_13:L

unknown_14:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallconvcatunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__wrapped_model_1367425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:         

_user_specified_namecat:YU
3
_output_shapes!
:         

_user_specified_nameconv
Д
ѓ
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1368338

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpђ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0ъ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         \
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:         m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
х
┤
)__inference_model_2_layer_call_fn_1367662
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:&L
	unknown_4:L
	unknown_5:LL
	unknown_6:L
	unknown_7:LL
	unknown_8:L
	unknown_9:LL

unknown_10:L

unknown_11:LL

unknown_12:L

unknown_13:L

unknown_14:
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallconvcatunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1367627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:         

_user_specified_nameconv:LH
'
_output_shapes
:         

_user_specified_namecat
К:
┴
D__inference_model_2_layer_call_and_return_conditional_losses_1367627

inputs
inputs_1.
conv3d_4_1367484:
conv3d_4_1367486:.
conv3d_5_1367502:
conv3d_5_1367504:"
dense_12_1367537:&L
dense_12_1367539:L"
dense_13_1367554:LL
dense_13_1367556:L"
dense_14_1367571:LL
dense_14_1367573:L"
dense_15_1367588:LL
dense_15_1367590:L"
dense_16_1367605:LL
dense_16_1367607:L"
dense_17_1367621:L
dense_17_1367623:
identityѕб conv3d_4/StatefulPartitionedCallб conv3d_5/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallп
 zero_padding3d_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1367435Ц
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_2/PartitionedCall:output:0conv3d_4_1367484conv3d_4_1367486*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1367483щ
max_pooling3d_4/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1367447ц
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_5_1367502conv3d_5_1367504*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1367501щ
max_pooling3d_5/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1367459Я
flatten_2/PartitionedCallPartitionedCall(max_pooling3d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1367514ь
concatenate_2/PartitionedCallPartitionedCallinputs_1"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         &* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1367523ќ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_12_1367537dense_12_1367539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1367536Ў
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1367554dense_13_1367556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1367553Ў
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1367571dense_14_1367573*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1367570Ў
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_1367588dense_15_1367590*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1367587Ў
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_1367605dense_16_1367607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1367604Ў
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_1367621dense_17_1367623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_1367620x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
┤:
║
D__inference_model_2_layer_call_and_return_conditional_losses_1367969
conv
cat.
conv3d_4_1367924:
conv3d_4_1367926:.
conv3d_5_1367930:
conv3d_5_1367932:"
dense_12_1367938:&L
dense_12_1367940:L"
dense_13_1367943:LL
dense_13_1367945:L"
dense_14_1367948:LL
dense_14_1367950:L"
dense_15_1367953:LL
dense_15_1367955:L"
dense_16_1367958:LL
dense_16_1367960:L"
dense_17_1367963:L
dense_17_1367965:
identityѕб conv3d_4/StatefulPartitionedCallб conv3d_5/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallо
 zero_padding3d_2/PartitionedCallPartitionedCallconv*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1367435Ц
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_2/PartitionedCall:output:0conv3d_4_1367924conv3d_4_1367926*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1367483щ
max_pooling3d_4/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1367447ц
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_5_1367930conv3d_5_1367932*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1367501щ
max_pooling3d_5/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1367459Я
flatten_2/PartitionedCallPartitionedCall(max_pooling3d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1367514У
concatenate_2/PartitionedCallPartitionedCallcat"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         &* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1367523ќ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_12_1367938dense_12_1367940*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1367536Ў
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1367943dense_13_1367945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1367553Ў
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1367948dense_14_1367950*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1367570Ў
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_1367953dense_15_1367955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1367587Ў
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_1367958dense_16_1367960*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1367604Ў
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_1367963dense_17_1367965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_1367620x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:Y U
3
_output_shapes!
:         

_user_specified_nameconv:LH
'
_output_shapes
:         

_user_specified_namecat
Д
ѓ
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1367501

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpђ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0ъ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         \
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:         m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Д
ѓ
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1368308

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpђ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0ъ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         \
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:         m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
з
N
2__inference_zero_padding3d_2_layer_call_fn_1368282

inputs
identityв
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1367435љ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
К:
┴
D__inference_model_2_layer_call_and_return_conditional_losses_1367846

inputs
inputs_1.
conv3d_4_1367801:
conv3d_4_1367803:.
conv3d_5_1367807:
conv3d_5_1367809:"
dense_12_1367815:&L
dense_12_1367817:L"
dense_13_1367820:LL
dense_13_1367822:L"
dense_14_1367825:LL
dense_14_1367827:L"
dense_15_1367830:LL
dense_15_1367832:L"
dense_16_1367835:LL
dense_16_1367837:L"
dense_17_1367840:L
dense_17_1367842:
identityѕб conv3d_4/StatefulPartitionedCallб conv3d_5/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallп
 zero_padding3d_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1367435Ц
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_2/PartitionedCall:output:0conv3d_4_1367801conv3d_4_1367803*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1367483щ
max_pooling3d_4/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1367447ц
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_5_1367807conv3d_5_1367809*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1367501щ
max_pooling3d_5/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1367459Я
flatten_2/PartitionedCallPartitionedCall(max_pooling3d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1367514ь
concatenate_2/PartitionedCallPartitionedCallinputs_1"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         &* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1367523ќ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_12_1367815dense_12_1367817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1367536Ў
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1367820dense_13_1367822*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1367553Ў
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1367825dense_14_1367827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1367570Ў
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_1367830dense_15_1367832*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1367587Ў
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_1367835dense_16_1367837*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1367604Ў
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_1367840dense_17_1367842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_1367620x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_12_layer_call_and_return_conditional_losses_1368392

inputs0
matmul_readvariableop_resource:&L-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&L*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         &: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         &
 
_user_specified_nameinputs
▒
[
/__inference_concatenate_2_layer_call_fn_1368365
inputs_0
inputs_1
identity┼
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         &* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1367523`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         &"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
┘
h
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1367459

inputs
identityй
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingSAME*
strides	
і
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
┤:
║
D__inference_model_2_layer_call_and_return_conditional_losses_1368019
conv
cat.
conv3d_4_1367974:
conv3d_4_1367976:.
conv3d_5_1367980:
conv3d_5_1367982:"
dense_12_1367988:&L
dense_12_1367990:L"
dense_13_1367993:LL
dense_13_1367995:L"
dense_14_1367998:LL
dense_14_1368000:L"
dense_15_1368003:LL
dense_15_1368005:L"
dense_16_1368008:LL
dense_16_1368010:L"
dense_17_1368013:L
dense_17_1368015:
identityѕб conv3d_4/StatefulPartitionedCallб conv3d_5/StatefulPartitionedCallб dense_12/StatefulPartitionedCallб dense_13/StatefulPartitionedCallб dense_14/StatefulPartitionedCallб dense_15/StatefulPartitionedCallб dense_16/StatefulPartitionedCallб dense_17/StatefulPartitionedCallо
 zero_padding3d_2/PartitionedCallPartitionedCallconv*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1367435Ц
 conv3d_4/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_2/PartitionedCall:output:0conv3d_4_1367974conv3d_4_1367976*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1367483щ
max_pooling3d_4/PartitionedCallPartitionedCall)conv3d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1367447ц
 conv3d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_4/PartitionedCall:output:0conv3d_5_1367980conv3d_5_1367982*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1367501щ
max_pooling3d_5/PartitionedCallPartitionedCall)conv3d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1367459Я
flatten_2/PartitionedCallPartitionedCall(max_pooling3d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1367514У
concatenate_2/PartitionedCallPartitionedCallcat"flatten_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         &* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *S
fNRL
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1367523ќ
 dense_12/StatefulPartitionedCallStatefulPartitionedCall&concatenate_2/PartitionedCall:output:0dense_12_1367988dense_12_1367990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_1367536Ў
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_1367993dense_13_1367995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_1367553Ў
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_1367998dense_14_1368000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1367570Ў
 dense_15/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0dense_15_1368003dense_15_1368005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_15_layer_call_and_return_conditional_losses_1367587Ў
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_1368008dense_16_1368010*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1367604Ў
 dense_17/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0dense_17_1368013dense_17_1368015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_1367620x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp!^conv3d_4/StatefulPartitionedCall!^conv3d_5/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2D
 conv3d_4/StatefulPartitionedCall conv3d_4/StatefulPartitionedCall2D
 conv3d_5/StatefulPartitionedCall conv3d_5/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:Y U
3
_output_shapes!
:         

_user_specified_nameconv:LH
'
_output_shapes
:         

_user_specified_namecat
╗
t
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1367523

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         &W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         &"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_14_layer_call_and_return_conditional_losses_1368432

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
х
┤
)__inference_model_2_layer_call_fn_1367919
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:&L
	unknown_4:L
	unknown_5:LL
	unknown_6:L
	unknown_7:LL
	unknown_8:L
	unknown_9:LL

unknown_10:L

unknown_11:LL

unknown_12:L

unknown_13:L

unknown_14:
identityѕбStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallconvcatunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1367846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:         

_user_specified_nameconv:LH
'
_output_shapes
:         

_user_specified_namecat
ю

Ш
E__inference_dense_15_layer_call_and_return_conditional_losses_1367587

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
╚	
Ш
E__inference_dense_17_layer_call_and_return_conditional_losses_1368491

inputs0
matmul_readvariableop_resource:L-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:L*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_13_layer_call_and_return_conditional_losses_1368412

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
К
Ќ
*__inference_dense_14_layer_call_fn_1368421

inputs
unknown:LL
	unknown_0:L
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_1367570o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ы
M
1__inference_max_pooling3d_4_layer_call_fn_1368313

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A                                             * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1367447љ
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╬
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_1368359

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
Ѓ
Б
*__inference_conv3d_5_layer_call_fn_1368327

inputs%
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1367501{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┘
h
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1368318

inputs
identityй
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingSAME*
strides	
і
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_13_layer_call_and_return_conditional_losses_1367553

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
╚	
Ш
E__inference_dense_17_layer_call_and_return_conditional_losses_1367620

inputs0
matmul_readvariableop_resource:L-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:L*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ф
i
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1367435

inputs
identityЁ
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     І
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:A                                             ё
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
╬
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_1367514

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
┘
h
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1368348

inputs
identityй
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A                                             *
ksize	
*
paddingSAME*
strides	
і
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A                                             "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A                                             : {
W
_output_shapesE
C:A                                             
 
_user_specified_nameinputs
ю\
љ
"__inference__wrapped_model_1367425
conv
catM
/model_2_conv3d_4_conv3d_readvariableop_resource:>
0model_2_conv3d_4_biasadd_readvariableop_resource:M
/model_2_conv3d_5_conv3d_readvariableop_resource:>
0model_2_conv3d_5_biasadd_readvariableop_resource:A
/model_2_dense_12_matmul_readvariableop_resource:&L>
0model_2_dense_12_biasadd_readvariableop_resource:LA
/model_2_dense_13_matmul_readvariableop_resource:LL>
0model_2_dense_13_biasadd_readvariableop_resource:LA
/model_2_dense_14_matmul_readvariableop_resource:LL>
0model_2_dense_14_biasadd_readvariableop_resource:LA
/model_2_dense_15_matmul_readvariableop_resource:LL>
0model_2_dense_15_biasadd_readvariableop_resource:LA
/model_2_dense_16_matmul_readvariableop_resource:LL>
0model_2_dense_16_biasadd_readvariableop_resource:LA
/model_2_dense_17_matmul_readvariableop_resource:L>
0model_2_dense_17_biasadd_readvariableop_resource:
identityѕб'model_2/conv3d_4/BiasAdd/ReadVariableOpб&model_2/conv3d_4/Conv3D/ReadVariableOpб'model_2/conv3d_5/BiasAdd/ReadVariableOpб&model_2/conv3d_5/Conv3D/ReadVariableOpб'model_2/dense_12/BiasAdd/ReadVariableOpб&model_2/dense_12/MatMul/ReadVariableOpб'model_2/dense_13/BiasAdd/ReadVariableOpб&model_2/dense_13/MatMul/ReadVariableOpб'model_2/dense_14/BiasAdd/ReadVariableOpб&model_2/dense_14/MatMul/ReadVariableOpб'model_2/dense_15/BiasAdd/ReadVariableOpб&model_2/dense_15/MatMul/ReadVariableOpб'model_2/dense_16/BiasAdd/ReadVariableOpб&model_2/dense_16/MatMul/ReadVariableOpб'model_2/dense_17/BiasAdd/ReadVariableOpб&model_2/dense_17/MatMul/ReadVariableOpъ
%model_2/zero_padding3d_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     Ќ
model_2/zero_padding3d_2/PadPadconv.model_2/zero_padding3d_2/Pad/paddings:output:0*
T0*3
_output_shapes!
:         б
&model_2/conv3d_4/Conv3D/ReadVariableOpReadVariableOp/model_2_conv3d_4_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0▀
model_2/conv3d_4/Conv3DConv3D%model_2/zero_padding3d_2/Pad:output:0.model_2/conv3d_4/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
ћ
'model_2/conv3d_4/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv3d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┤
model_2/conv3d_4/BiasAddBiasAdd model_2/conv3d_4/Conv3D:output:0/model_2/conv3d_4/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         ~
model_2/conv3d_4/ReluRelu!model_2/conv3d_4/BiasAdd:output:0*
T0*3
_output_shapes!
:         ╬
!model_2/max_pooling3d_4/MaxPool3D	MaxPool3D#model_2/conv3d_4/Relu:activations:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingSAME*
strides	
б
&model_2/conv3d_5/Conv3D/ReadVariableOpReadVariableOp/model_2_conv3d_5_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0С
model_2/conv3d_5/Conv3DConv3D*model_2/max_pooling3d_4/MaxPool3D:output:0.model_2/conv3d_5/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
ћ
'model_2/conv3d_5/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv3d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┤
model_2/conv3d_5/BiasAddBiasAdd model_2/conv3d_5/Conv3D:output:0/model_2/conv3d_5/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         ~
model_2/conv3d_5/ReluRelu!model_2/conv3d_5/BiasAdd:output:0*
T0*3
_output_shapes!
:         ╬
!model_2/max_pooling3d_5/MaxPool3D	MaxPool3D#model_2/conv3d_5/Relu:activations:0*
T0*3
_output_shapes!
:         *
ksize	
*
paddingSAME*
strides	
h
model_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ц
model_2/flatten_2/ReshapeReshape*model_2/max_pooling3d_5/MaxPool3D:output:0 model_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:         c
!model_2/concatenate_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :И
model_2/concatenate_2/concatConcatV2cat"model_2/flatten_2/Reshape:output:0*model_2/concatenate_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:         &ќ
&model_2/dense_12/MatMul/ReadVariableOpReadVariableOp/model_2_dense_12_matmul_readvariableop_resource*
_output_shapes

:&L*
dtype0ф
model_2/dense_12/MatMulMatMul%model_2/concatenate_2/concat:output:0.model_2/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lћ
'model_2/dense_12/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_12_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Е
model_2/dense_12/BiasAddBiasAdd!model_2/dense_12/MatMul:product:0/model_2/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
model_2/dense_12/ReluRelu!model_2/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:         Lќ
&model_2/dense_13/MatMul/ReadVariableOpReadVariableOp/model_2_dense_13_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0е
model_2/dense_13/MatMulMatMul#model_2/dense_12/Relu:activations:0.model_2/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lћ
'model_2/dense_13/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_13_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Е
model_2/dense_13/BiasAddBiasAdd!model_2/dense_13/MatMul:product:0/model_2/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
model_2/dense_13/ReluRelu!model_2/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:         Lќ
&model_2/dense_14/MatMul/ReadVariableOpReadVariableOp/model_2_dense_14_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0е
model_2/dense_14/MatMulMatMul#model_2/dense_13/Relu:activations:0.model_2/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lћ
'model_2/dense_14/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_14_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Е
model_2/dense_14/BiasAddBiasAdd!model_2/dense_14/MatMul:product:0/model_2/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
model_2/dense_14/ReluRelu!model_2/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:         Lќ
&model_2/dense_15/MatMul/ReadVariableOpReadVariableOp/model_2_dense_15_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0е
model_2/dense_15/MatMulMatMul#model_2/dense_14/Relu:activations:0.model_2/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lћ
'model_2/dense_15/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_15_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Е
model_2/dense_15/BiasAddBiasAdd!model_2/dense_15/MatMul:product:0/model_2/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
model_2/dense_15/ReluRelu!model_2/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:         Lќ
&model_2/dense_16/MatMul/ReadVariableOpReadVariableOp/model_2_dense_16_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0е
model_2/dense_16/MatMulMatMul#model_2/dense_15/Relu:activations:0.model_2/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lћ
'model_2/dense_16/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_16_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0Е
model_2/dense_16/BiasAddBiasAdd!model_2/dense_16/MatMul:product:0/model_2/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
model_2/dense_16/ReluRelu!model_2/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         Lќ
&model_2/dense_17/MatMul/ReadVariableOpReadVariableOp/model_2_dense_17_matmul_readvariableop_resource*
_output_shapes

:L*
dtype0е
model_2/dense_17/MatMulMatMul#model_2/dense_16/Relu:activations:0.model_2/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ћ
'model_2/dense_17/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
model_2/dense_17/BiasAddBiasAdd!model_2/dense_17/MatMul:product:0/model_2/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         p
IdentityIdentity!model_2/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         я
NoOpNoOp(^model_2/conv3d_4/BiasAdd/ReadVariableOp'^model_2/conv3d_4/Conv3D/ReadVariableOp(^model_2/conv3d_5/BiasAdd/ReadVariableOp'^model_2/conv3d_5/Conv3D/ReadVariableOp(^model_2/dense_12/BiasAdd/ReadVariableOp'^model_2/dense_12/MatMul/ReadVariableOp(^model_2/dense_13/BiasAdd/ReadVariableOp'^model_2/dense_13/MatMul/ReadVariableOp(^model_2/dense_14/BiasAdd/ReadVariableOp'^model_2/dense_14/MatMul/ReadVariableOp(^model_2/dense_15/BiasAdd/ReadVariableOp'^model_2/dense_15/MatMul/ReadVariableOp(^model_2/dense_16/BiasAdd/ReadVariableOp'^model_2/dense_16/MatMul/ReadVariableOp(^model_2/dense_17/BiasAdd/ReadVariableOp'^model_2/dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 2R
'model_2/conv3d_4/BiasAdd/ReadVariableOp'model_2/conv3d_4/BiasAdd/ReadVariableOp2P
&model_2/conv3d_4/Conv3D/ReadVariableOp&model_2/conv3d_4/Conv3D/ReadVariableOp2R
'model_2/conv3d_5/BiasAdd/ReadVariableOp'model_2/conv3d_5/BiasAdd/ReadVariableOp2P
&model_2/conv3d_5/Conv3D/ReadVariableOp&model_2/conv3d_5/Conv3D/ReadVariableOp2R
'model_2/dense_12/BiasAdd/ReadVariableOp'model_2/dense_12/BiasAdd/ReadVariableOp2P
&model_2/dense_12/MatMul/ReadVariableOp&model_2/dense_12/MatMul/ReadVariableOp2R
'model_2/dense_13/BiasAdd/ReadVariableOp'model_2/dense_13/BiasAdd/ReadVariableOp2P
&model_2/dense_13/MatMul/ReadVariableOp&model_2/dense_13/MatMul/ReadVariableOp2R
'model_2/dense_14/BiasAdd/ReadVariableOp'model_2/dense_14/BiasAdd/ReadVariableOp2P
&model_2/dense_14/MatMul/ReadVariableOp&model_2/dense_14/MatMul/ReadVariableOp2R
'model_2/dense_15/BiasAdd/ReadVariableOp'model_2/dense_15/BiasAdd/ReadVariableOp2P
&model_2/dense_15/MatMul/ReadVariableOp&model_2/dense_15/MatMul/ReadVariableOp2R
'model_2/dense_16/BiasAdd/ReadVariableOp'model_2/dense_16/BiasAdd/ReadVariableOp2P
&model_2/dense_16/MatMul/ReadVariableOp&model_2/dense_16/MatMul/ReadVariableOp2R
'model_2/dense_17/BiasAdd/ReadVariableOp'model_2/dense_17/BiasAdd/ReadVariableOp2P
&model_2/dense_17/MatMul/ReadVariableOp&model_2/dense_17/MatMul/ReadVariableOp:Y U
3
_output_shapes!
:         

_user_specified_nameconv:LH
'
_output_shapes
:         

_user_specified_namecat
╝
G
+__inference_flatten_2_layer_call_fn_1368353

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_1367514`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         :[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_15_layer_call_and_return_conditional_losses_1368452

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
л
й
)__inference_model_2_layer_call_fn_1368101
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:&L
	unknown_4:L
	unknown_5:LL
	unknown_6:L
	unknown_7:LL
	unknown_8:L
	unknown_9:LL

unknown_10:L

unknown_11:LL

unknown_12:L

unknown_13:L

unknown_14:
identityѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1367846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
ю

Ш
E__inference_dense_16_layer_call_and_return_conditional_losses_1368472

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         L
 
_user_specified_nameinputs
ю

Ш
E__inference_dense_12_layer_call_and_return_conditional_losses_1367536

inputs0
matmul_readvariableop_resource:&L-
biasadd_readvariableop_resource:L
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&L*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         &: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         &
 
_user_specified_nameinputs
Д
ѓ
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1367483

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv3D/ReadVariableOpђ
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0ъ
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         *
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ђ
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:         \
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:         m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:         
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Т
serving_defaultм
3
cat,
serving_default_cat:0         
A
conv9
serving_default_conv:0         <
dense_170
StatefulPartitionedCall:0         tensorflow/serving/predict:ТР
ч
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
Ц
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Њ
witer

xbeta_1

ybeta_2
	zdecay
{learning_ratemн mН-mо.mОGmпHm┘Om┌Pm█Wm▄XmП_mя`m▀gmЯhmрomРpmсvС vт-vТ.vуGvУHvжOvЖPvвWvВXvь_vЬ`v№gv­hvыovЫpvз"
	optimizer
ќ
0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15"
trackable_list_wrapper
ќ
0
 1
-2
.3
G4
H5
O6
P7
W8
X9
_10
`11
g12
h13
o14
p15"
trackable_list_wrapper
 "
trackable_list_wrapper
╦
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
ђlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ы2№
)__inference_model_2_layer_call_fn_1367662
)__inference_model_2_layer_call_fn_1368063
)__inference_model_2_layer_call_fn_1368101
)__inference_model_2_layer_call_fn_1367919└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
я2█
D__inference_model_2_layer_call_and_return_conditional_losses_1368169
D__inference_model_2_layer_call_and_return_conditional_losses_1368237
D__inference_model_2_layer_call_and_return_conditional_losses_1367969
D__inference_model_2_layer_call_and_return_conditional_losses_1368019└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
¤B╠
"__inference__wrapped_model_1367425convcat"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
-
Ђserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ѓnon_trainable_variables
Ѓlayers
ёmetrics
 Ёlayer_regularization_losses
єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▄2┘
2__inference_zero_padding3d_2_layer_call_fn_1368282б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
э2З
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1368288б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
-:+2conv3d_4/kernel
:2conv3d_4/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Єnon_trainable_variables
ѕlayers
Ѕmetrics
 іlayer_regularization_losses
Іlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv3d_4_layer_call_fn_1368297б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1368308б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
їnon_trainable_variables
Їlayers
јmetrics
 Јlayer_regularization_losses
љlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling3d_4_layer_call_fn_1368313б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ш2з
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1368318б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
-:+2conv3d_5/kernel
:2conv3d_5/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_conv3d_5_layer_call_fn_1368327б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1368338б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ќnon_trainable_variables
Ќlayers
ўmetrics
 Ўlayer_regularization_losses
џlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
█2п
1__inference_max_pooling3d_5_layer_call_fn_1368343б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ш2з
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1368348б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Џnon_trainable_variables
юlayers
Юmetrics
 ъlayer_regularization_losses
Ъlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
Н2м
+__inference_flatten_2_layer_call_fn_1368353б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_2_layer_call_and_return_conditional_losses_1368359б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
аnon_trainable_variables
Аlayers
бmetrics
 Бlayer_regularization_losses
цlayer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
┘2о
/__inference_concatenate_2_layer_call_fn_1368365б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
З2ы
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1368372б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:&L2dense_12/kernel
:L2dense_12/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Цnon_trainable_variables
дlayers
Дmetrics
 еlayer_regularization_losses
Еlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_12_layer_call_fn_1368381б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_12_layer_call_and_return_conditional_losses_1368392б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:LL2dense_13/kernel
:L2dense_13/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
фnon_trainable_variables
Фlayers
гmetrics
 Гlayer_regularization_losses
«layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_13_layer_call_fn_1368401б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_13_layer_call_and_return_conditional_losses_1368412б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:LL2dense_14/kernel
:L2dense_14/bias
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
»non_trainable_variables
░layers
▒metrics
 ▓layer_regularization_losses
│layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_14_layer_call_fn_1368421б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_14_layer_call_and_return_conditional_losses_1368432б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:LL2dense_15/kernel
:L2dense_15/bias
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┤non_trainable_variables
хlayers
Хmetrics
 иlayer_regularization_losses
Иlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_15_layer_call_fn_1368441б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_15_layer_call_and_return_conditional_losses_1368452б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:LL2dense_16/kernel
:L2dense_16/bias
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_16_layer_call_fn_1368461б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_16_layer_call_and_return_conditional_losses_1368472б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
!:L2dense_17/kernel
:2dense_17/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Йnon_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
н2Л
*__inference_dense_17_layer_call_fn_1368481б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
№2В
E__inference_dense_17_layer_call_and_return_conditional_losses_1368491б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
ј
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
8
├0
─1
┼2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╠B╔
%__inference_signature_wrapper_1368277catconv"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

кtotal

Кcount
╚	variables
╔	keras_api"
_tf_keras_metric
c

╩total

╦count
╠
_fn_kwargs
═	variables
╬	keras_api"
_tf_keras_metric
c

¤total

лcount
Л
_fn_kwargs
м	variables
М	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
к0
К1"
trackable_list_wrapper
.
╚	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
╩0
╦1"
trackable_list_wrapper
.
═	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
¤0
л1"
trackable_list_wrapper
.
м	variables"
_generic_user_object
2:02Adam/conv3d_4/kernel/m
 :2Adam/conv3d_4/bias/m
2:02Adam/conv3d_5/kernel/m
 :2Adam/conv3d_5/bias/m
&:$&L2Adam/dense_12/kernel/m
 :L2Adam/dense_12/bias/m
&:$LL2Adam/dense_13/kernel/m
 :L2Adam/dense_13/bias/m
&:$LL2Adam/dense_14/kernel/m
 :L2Adam/dense_14/bias/m
&:$LL2Adam/dense_15/kernel/m
 :L2Adam/dense_15/bias/m
&:$LL2Adam/dense_16/kernel/m
 :L2Adam/dense_16/bias/m
&:$L2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
2:02Adam/conv3d_4/kernel/v
 :2Adam/conv3d_4/bias/v
2:02Adam/conv3d_5/kernel/v
 :2Adam/conv3d_5/bias/v
&:$&L2Adam/dense_12/kernel/v
 :L2Adam/dense_12/bias/v
&:$LL2Adam/dense_13/kernel/v
 :L2Adam/dense_13/bias/v
&:$LL2Adam/dense_14/kernel/v
 :L2Adam/dense_14/bias/v
&:$LL2Adam/dense_15/kernel/v
 :L2Adam/dense_15/bias/v
&:$LL2Adam/dense_16/kernel/v
 :L2Adam/dense_16/bias/v
&:$L2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v═
"__inference__wrapped_model_1367425д -.GHOPWX_`ghop]бZ
SбP
NџK
*і'
conv         
і
cat         
ф "3ф0
.
dense_17"і
dense_17         м
J__inference_concatenate_2_layer_call_and_return_conditional_losses_1368372ЃZбW
PбM
KџH
"і
inputs/0         
"і
inputs/1         
ф "%б"
і
0         &
џ Е
/__inference_concatenate_2_layer_call_fn_1368365vZбW
PбM
KџH
"і
inputs/0         
"і
inputs/1         
ф "і         &й
E__inference_conv3d_4_layer_call_and_return_conditional_losses_1368308t ;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ Ћ
*__inference_conv3d_4_layer_call_fn_1368297g ;б8
1б.
,і)
inputs         
ф "$і!         й
E__inference_conv3d_5_layer_call_and_return_conditional_losses_1368338t-.;б8
1б.
,і)
inputs         
ф "1б.
'і$
0         
џ Ћ
*__inference_conv3d_5_layer_call_fn_1368327g-.;б8
1б.
,і)
inputs         
ф "$і!         Ц
E__inference_dense_12_layer_call_and_return_conditional_losses_1368392\GH/б,
%б"
 і
inputs         &
ф "%б"
і
0         L
џ }
*__inference_dense_12_layer_call_fn_1368381OGH/б,
%б"
 і
inputs         &
ф "і         LЦ
E__inference_dense_13_layer_call_and_return_conditional_losses_1368412\OP/б,
%б"
 і
inputs         L
ф "%б"
і
0         L
џ }
*__inference_dense_13_layer_call_fn_1368401OOP/б,
%б"
 і
inputs         L
ф "і         LЦ
E__inference_dense_14_layer_call_and_return_conditional_losses_1368432\WX/б,
%б"
 і
inputs         L
ф "%б"
і
0         L
џ }
*__inference_dense_14_layer_call_fn_1368421OWX/б,
%б"
 і
inputs         L
ф "і         LЦ
E__inference_dense_15_layer_call_and_return_conditional_losses_1368452\_`/б,
%б"
 і
inputs         L
ф "%б"
і
0         L
џ }
*__inference_dense_15_layer_call_fn_1368441O_`/б,
%б"
 і
inputs         L
ф "і         LЦ
E__inference_dense_16_layer_call_and_return_conditional_losses_1368472\gh/б,
%б"
 і
inputs         L
ф "%б"
і
0         L
џ }
*__inference_dense_16_layer_call_fn_1368461Ogh/б,
%б"
 і
inputs         L
ф "і         LЦ
E__inference_dense_17_layer_call_and_return_conditional_losses_1368491\op/б,
%б"
 і
inputs         L
ф "%б"
і
0         
џ }
*__inference_dense_17_layer_call_fn_1368481Oop/б,
%б"
 і
inputs         L
ф "і         «
F__inference_flatten_2_layer_call_and_return_conditional_losses_1368359d;б8
1б.
,і)
inputs         
ф "%б"
і
0         
џ є
+__inference_flatten_2_layer_call_fn_1368353W;б8
1б.
,і)
inputs         
ф "і         Ѕ
L__inference_max_pooling3d_4_layer_call_and_return_conditional_losses_1368318И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ р
1__inference_max_pooling3d_4_layer_call_fn_1368313Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             Ѕ
L__inference_max_pooling3d_5_layer_call_and_return_conditional_losses_1368348И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ р
1__inference_max_pooling3d_5_layer_call_fn_1368343Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             ж
D__inference_model_2_layer_call_and_return_conditional_losses_1367969а -.GHOPWX_`ghopeбb
[бX
NџK
*і'
conv         
і
cat         
p 

 
ф "%б"
і
0         
џ ж
D__inference_model_2_layer_call_and_return_conditional_losses_1368019а -.GHOPWX_`ghopeбb
[бX
NџK
*і'
conv         
і
cat         
p

 
ф "%б"
і
0         
џ Ы
D__inference_model_2_layer_call_and_return_conditional_losses_1368169Е -.GHOPWX_`ghopnбk
dбa
WџT
.і+
inputs/0         
"і
inputs/1         
p 

 
ф "%б"
і
0         
џ Ы
D__inference_model_2_layer_call_and_return_conditional_losses_1368237Е -.GHOPWX_`ghopnбk
dбa
WџT
.і+
inputs/0         
"і
inputs/1         
p

 
ф "%б"
і
0         
џ ┴
)__inference_model_2_layer_call_fn_1367662Њ -.GHOPWX_`ghopeбb
[бX
NџK
*і'
conv         
і
cat         
p 

 
ф "і         ┴
)__inference_model_2_layer_call_fn_1367919Њ -.GHOPWX_`ghopeбb
[бX
NџK
*і'
conv         
і
cat         
p

 
ф "і         ╩
)__inference_model_2_layer_call_fn_1368063ю -.GHOPWX_`ghopnбk
dбa
WџT
.і+
inputs/0         
"і
inputs/1         
p 

 
ф "і         ╩
)__inference_model_2_layer_call_fn_1368101ю -.GHOPWX_`ghopnбk
dбa
WџT
.і+
inputs/0         
"і
inputs/1         
p

 
ф "і         ┌
%__inference_signature_wrapper_1368277░ -.GHOPWX_`ghopgбd
б 
]фZ
$
catі
cat         
2
conv*і'
conv         "3ф0
.
dense_17"і
dense_17         і
M__inference_zero_padding3d_2_layer_call_and_return_conditional_losses_1368288И_б\
UбR
PіM
inputsA                                             
ф "UбR
KіH
0A                                             
џ Р
2__inference_zero_padding3d_2_layer_call_fn_1368282Ф_б\
UбR
PіM
inputsA                                             
ф "HіEA                                             