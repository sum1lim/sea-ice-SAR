??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
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
?
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
delete_old_dirsbool(?
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
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02unknown8Ӓ
?
conv3d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_6/kernel

#conv3d_6/kernel/Read/ReadVariableOpReadVariableOpconv3d_6/kernel**
_output_shapes
:*
dtype0
r
conv3d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_6/bias
k
!conv3d_6/bias/Read/ReadVariableOpReadVariableOpconv3d_6/bias*
_output_shapes
:*
dtype0
?
conv3d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_7/kernel

#conv3d_7/kernel/Read/ReadVariableOpReadVariableOpconv3d_7/kernel**
_output_shapes
:*
dtype0
r
conv3d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_7/bias
k
!conv3d_7/bias/Read/ReadVariableOpReadVariableOpconv3d_7/bias*
_output_shapes
:*
dtype0
?
conv3d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_8/kernel

#conv3d_8/kernel/Read/ReadVariableOpReadVariableOpconv3d_8/kernel**
_output_shapes
:*
dtype0
r
conv3d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_8/bias
k
!conv3d_8/bias/Read/ReadVariableOpReadVariableOpconv3d_8/bias*
_output_shapes
:*
dtype0
?
conv3d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv3d_9/kernel

#conv3d_9/kernel/Read/ReadVariableOpReadVariableOpconv3d_9/kernel**
_output_shapes
:*
dtype0
r
conv3d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_9/bias
k
!conv3d_9/bias/Read/ReadVariableOpReadVariableOpconv3d_9/bias*
_output_shapes
:*
dtype0
?
conv3d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_10/kernel
?
$conv3d_10/kernel/Read/ReadVariableOpReadVariableOpconv3d_10/kernel**
_output_shapes
:*
dtype0
t
conv3d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_10/bias
m
"conv3d_10/bias/Read/ReadVariableOpReadVariableOpconv3d_10/bias*
_output_shapes
:*
dtype0
?
conv3d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_11/kernel
?
$conv3d_11/kernel/Read/ReadVariableOpReadVariableOpconv3d_11/kernel**
_output_shapes
:*
dtype0
t
conv3d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_11/bias
m
"conv3d_11/bias/Read/ReadVariableOpReadVariableOpconv3d_11/bias*
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
?
Adam/conv3d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_6/kernel/m
?
*Adam/conv3d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_6/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_6/bias/m
y
(Adam/conv3d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_6/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_7/kernel/m
?
*Adam/conv3d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_7/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_7/bias/m
y
(Adam/conv3d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_7/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_8/kernel/m
?
*Adam/conv3d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_8/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_8/bias/m
y
(Adam/conv3d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_8/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_9/kernel/m
?
*Adam/conv3d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_9/bias/m
y
(Adam/conv3d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_10/kernel/m
?
+Adam/conv3d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_10/bias/m
{
)Adam/conv3d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_11/kernel/m
?
+Adam/conv3d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_11/bias/m
{
)Adam/conv3d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_6/kernel/v
?
*Adam/conv3d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_6/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_6/bias/v
y
(Adam/conv3d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_6/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_7/kernel/v
?
*Adam/conv3d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_7/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_7/bias/v
y
(Adam/conv3d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_7/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_8/kernel/v
?
*Adam/conv3d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_8/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_8/bias/v
y
(Adam/conv3d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_8/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv3d_9/kernel/v
?
*Adam/conv3d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv3d_9/bias/v
y
(Adam/conv3d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_9/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_10/kernel/v
?
+Adam/conv3d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_10/bias/v
{
)Adam/conv3d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_10/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_11/kernel/v
?
+Adam/conv3d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_11/bias/v
{
)Adam/conv3d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_11/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?a
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?`
value?`B?` B?`
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
?

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
?

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 
?

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses*
?

\kernel
]bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses*
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
?
jiter

kbeta_1

lbeta_2
	mdecay
nlearning_ratem?m?*m?+m?8m?9m?Fm?Gm?Tm?Um?\m?]m?v?v?*v?+v?8v?9v?Fv?Gv?Tv?Uv?\v?]v?*
Z
0
1
*2
+3
84
95
F6
G7
T8
U9
\10
]11*
Z
0
1
*2
+3
84
95
F6
G7
T8
U9
\10
]11*
* 
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

tserving_default* 
* 
* 
* 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv3d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv3d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv3d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEconv3d_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv3d_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

T0
U1*

T0
U1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv3d_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_11/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

\0
]1*

\0
]1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 
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
Z
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
11*

?0*
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

?total

?count
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
?|
VARIABLE_VALUEAdam/conv3d_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_9/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_9/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_11/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_11/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/conv3d_9/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv3d_9/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_11/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_11/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_6Placeholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6conv3d_6/kernelconv3d_6/biasconv3d_7/kernelconv3d_7/biasconv3d_8/kernelconv3d_8/biasconv3d_9/kernelconv3d_9/biasconv3d_10/kernelconv3d_10/biasconv3d_11/kernelconv3d_11/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1112786
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv3d_6/kernel/Read/ReadVariableOp!conv3d_6/bias/Read/ReadVariableOp#conv3d_7/kernel/Read/ReadVariableOp!conv3d_7/bias/Read/ReadVariableOp#conv3d_8/kernel/Read/ReadVariableOp!conv3d_8/bias/Read/ReadVariableOp#conv3d_9/kernel/Read/ReadVariableOp!conv3d_9/bias/Read/ReadVariableOp$conv3d_10/kernel/Read/ReadVariableOp"conv3d_10/bias/Read/ReadVariableOp$conv3d_11/kernel/Read/ReadVariableOp"conv3d_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv3d_6/kernel/m/Read/ReadVariableOp(Adam/conv3d_6/bias/m/Read/ReadVariableOp*Adam/conv3d_7/kernel/m/Read/ReadVariableOp(Adam/conv3d_7/bias/m/Read/ReadVariableOp*Adam/conv3d_8/kernel/m/Read/ReadVariableOp(Adam/conv3d_8/bias/m/Read/ReadVariableOp*Adam/conv3d_9/kernel/m/Read/ReadVariableOp(Adam/conv3d_9/bias/m/Read/ReadVariableOp+Adam/conv3d_10/kernel/m/Read/ReadVariableOp)Adam/conv3d_10/bias/m/Read/ReadVariableOp+Adam/conv3d_11/kernel/m/Read/ReadVariableOp)Adam/conv3d_11/bias/m/Read/ReadVariableOp*Adam/conv3d_6/kernel/v/Read/ReadVariableOp(Adam/conv3d_6/bias/v/Read/ReadVariableOp*Adam/conv3d_7/kernel/v/Read/ReadVariableOp(Adam/conv3d_7/bias/v/Read/ReadVariableOp*Adam/conv3d_8/kernel/v/Read/ReadVariableOp(Adam/conv3d_8/bias/v/Read/ReadVariableOp*Adam/conv3d_9/kernel/v/Read/ReadVariableOp(Adam/conv3d_9/bias/v/Read/ReadVariableOp+Adam/conv3d_10/kernel/v/Read/ReadVariableOp)Adam/conv3d_10/bias/v/Read/ReadVariableOp+Adam/conv3d_11/kernel/v/Read/ReadVariableOp)Adam/conv3d_11/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_1113153
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_6/kernelconv3d_6/biasconv3d_7/kernelconv3d_7/biasconv3d_8/kernelconv3d_8/biasconv3d_9/kernelconv3d_9/biasconv3d_10/kernelconv3d_10/biasconv3d_11/kernelconv3d_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv3d_6/kernel/mAdam/conv3d_6/bias/mAdam/conv3d_7/kernel/mAdam/conv3d_7/bias/mAdam/conv3d_8/kernel/mAdam/conv3d_8/bias/mAdam/conv3d_9/kernel/mAdam/conv3d_9/bias/mAdam/conv3d_10/kernel/mAdam/conv3d_10/bias/mAdam/conv3d_11/kernel/mAdam/conv3d_11/bias/mAdam/conv3d_6/kernel/vAdam/conv3d_6/bias/vAdam/conv3d_7/kernel/vAdam/conv3d_7/bias/vAdam/conv3d_8/kernel/vAdam/conv3d_8/bias/vAdam/conv3d_9/kernel/vAdam/conv3d_9/bias/vAdam/conv3d_10/kernel/vAdam/conv3d_10/bias/vAdam/conv3d_11/kernel/vAdam/conv3d_11/bias/v*7
Tin0
.2,*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1113292??	
?	
e
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1112049

inputs
identityp
strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    r
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"    ????????????    r
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*

begin_mask*
end_mask?
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112847

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_10_layer_call_fn_1112957

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112186{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112857

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingSAME*
strides	
?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112900

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0inputs*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2split:output:0split:output:0split:output:1split:output:1concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*3
_output_shapes!
:?????????*
	num_splitO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_2ConcatV2split_2:output:0split_2:output:0concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????e
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1113292
file_prefix>
 assignvariableop_conv3d_6_kernel:.
 assignvariableop_1_conv3d_6_bias:@
"assignvariableop_2_conv3d_7_kernel:.
 assignvariableop_3_conv3d_7_bias:@
"assignvariableop_4_conv3d_8_kernel:.
 assignvariableop_5_conv3d_8_bias:@
"assignvariableop_6_conv3d_9_kernel:.
 assignvariableop_7_conv3d_9_bias:A
#assignvariableop_8_conv3d_10_kernel:/
!assignvariableop_9_conv3d_10_bias:B
$assignvariableop_10_conv3d_11_kernel:0
"assignvariableop_11_conv3d_11_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: H
*assignvariableop_19_adam_conv3d_6_kernel_m:6
(assignvariableop_20_adam_conv3d_6_bias_m:H
*assignvariableop_21_adam_conv3d_7_kernel_m:6
(assignvariableop_22_adam_conv3d_7_bias_m:H
*assignvariableop_23_adam_conv3d_8_kernel_m:6
(assignvariableop_24_adam_conv3d_8_bias_m:H
*assignvariableop_25_adam_conv3d_9_kernel_m:6
(assignvariableop_26_adam_conv3d_9_bias_m:I
+assignvariableop_27_adam_conv3d_10_kernel_m:7
)assignvariableop_28_adam_conv3d_10_bias_m:I
+assignvariableop_29_adam_conv3d_11_kernel_m:7
)assignvariableop_30_adam_conv3d_11_bias_m:H
*assignvariableop_31_adam_conv3d_6_kernel_v:6
(assignvariableop_32_adam_conv3d_6_bias_v:H
*assignvariableop_33_adam_conv3d_7_kernel_v:6
(assignvariableop_34_adam_conv3d_7_bias_v:H
*assignvariableop_35_adam_conv3d_8_kernel_v:6
(assignvariableop_36_adam_conv3d_8_bias_v:H
*assignvariableop_37_adam_conv3d_9_kernel_v:6
(assignvariableop_38_adam_conv3d_9_bias_v:I
+assignvariableop_39_adam_conv3d_10_kernel_v:7
)assignvariableop_40_adam_conv3d_10_bias_v:I
+assignvariableop_41_adam_conv3d_11_kernel_v:7
)assignvariableop_42_adam_conv3d_11_bias_v:
identity_44??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_conv3d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv3d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv3d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv3d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv3d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv3d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv3d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv3d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv3d_10_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv3d_10_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv3d_11_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv3d_11_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv3d_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv3d_6_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv3d_7_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv3d_7_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv3d_8_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv3d_8_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv3d_9_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv3d_9_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv3d_10_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv3d_10_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv3d_11_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv3d_11_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv3d_6_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv3d_6_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv3d_7_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv3d_7_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv3d_8_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv3d_8_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv3d_9_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv3d_9_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv3d_10_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv3d_10_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv3d_11_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv3d_11_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_44IdentityIdentity_43:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_44Identity_44:output:0*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_42AssignVariableOp_422(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
h
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112173

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_splitO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????e
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling3d_2_layer_call_fn_1112822

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112022?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv3d_7_layer_call_fn_1112836

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112089{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112186

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112071

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112968

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv3d_9_layer_call_fn_1112909

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112144{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
+__inference_conv3d_11_layer_call_fn_1112977

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112203{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?4
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112517
input_6.
conv3d_6_1112481:
conv3d_6_1112483:.
conv3d_7_1112487:
conv3d_7_1112489:.
conv3d_8_1112493:
conv3d_8_1112495:.
conv3d_9_1112499:
conv3d_9_1112501:/
conv3d_10_1112505:
conv3d_10_1112507:/
conv3d_11_1112510:
conv3d_11_1112512:
identity??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
 zero_padding3d_1/PartitionedCallPartitionedCallinput_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112010?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_6_1112481conv3d_6_1112483*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112071?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112022?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_7_1112487conv3d_7_1112489*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112089?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112034?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_1112493conv3d_8_1112495*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112107?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112131?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_9_1112499conv3d_9_1112501*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112144?
up_sampling3d_3/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112173?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_3/PartitionedCall:output:0conv3d_10_1112505conv3d_10_1112507*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112186?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_1112510conv3d_11_1112512*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112203?
cropping3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1112049?
IdentityIdentity%cropping3d_1/PartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:\ X
3
_output_shapes!
:?????????
!
_user_specified_name	input_6
?
?
.__inference_sequential_5_layer_call_fn_1112552

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112211{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?4
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112477
input_6.
conv3d_6_1112441:
conv3d_6_1112443:.
conv3d_7_1112447:
conv3d_7_1112449:.
conv3d_8_1112453:
conv3d_8_1112455:.
conv3d_9_1112459:
conv3d_9_1112461:/
conv3d_10_1112465:
conv3d_10_1112467:/
conv3d_11_1112470:
conv3d_11_1112472:
identity??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
 zero_padding3d_1/PartitionedCallPartitionedCallinput_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112010?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_6_1112441conv3d_6_1112443*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112071?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112022?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_7_1112447conv3d_7_1112449*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112089?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112034?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_1112453conv3d_8_1112455*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112107?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112131?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_9_1112459conv3d_9_1112461*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112144?
up_sampling3d_3/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112173?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_3/PartitionedCall:output:0conv3d_10_1112465conv3d_10_1112467*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112186?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_1112470conv3d_11_1112472*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112203?
cropping3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1112049?
IdentityIdentity%cropping3d_1/PartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:\ X
3
_output_shapes!
:?????????
!
_user_specified_name	input_6
?
h
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112034

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingSAME*
strides	
?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112131

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0inputs*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2split:output:0split:output:0split:output:1split:output:1concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*3
_output_shapes!
:?????????*
	num_splitO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_2ConcatV2split_2:output:0split_2:output:0concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????e
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv3d_6_layer_call_fn_1112806

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112071{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?h
?	
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112755

inputsE
'conv3d_6_conv3d_readvariableop_resource:6
(conv3d_6_biasadd_readvariableop_resource:E
'conv3d_7_conv3d_readvariableop_resource:6
(conv3d_7_biasadd_readvariableop_resource:E
'conv3d_8_conv3d_readvariableop_resource:6
(conv3d_8_biasadd_readvariableop_resource:E
'conv3d_9_conv3d_readvariableop_resource:6
(conv3d_9_biasadd_readvariableop_resource:F
(conv3d_10_conv3d_readvariableop_resource:7
)conv3d_10_biasadd_readvariableop_resource:F
(conv3d_11_conv3d_readvariableop_resource:7
)conv3d_11_biasadd_readvariableop_resource:
identity?? conv3d_10/BiasAdd/ReadVariableOp?conv3d_10/Conv3D/ReadVariableOp? conv3d_11/BiasAdd/ReadVariableOp?conv3d_11/Conv3D/ReadVariableOp?conv3d_6/BiasAdd/ReadVariableOp?conv3d_6/Conv3D/ReadVariableOp?conv3d_7/BiasAdd/ReadVariableOp?conv3d_7/Conv3D/ReadVariableOp?conv3d_8/BiasAdd/ReadVariableOp?conv3d_8/Conv3D/ReadVariableOp?conv3d_9/BiasAdd/ReadVariableOp?conv3d_9/Conv3D/ReadVariableOp?
zero_padding3d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_1/PadPadinputs&zero_padding3d_1/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_6/Conv3DConv3Dzero_padding3d_1/Pad:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_6/ReluReluconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_2/MaxPool3D	MaxPool3Dconv3d_6/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_7/Conv3DConv3D"max_pooling3d_2/MaxPool3D:output:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_7/ReluReluconv3d_7/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_3/MaxPool3D	MaxPool3Dconv3d_7/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_8/Conv3DConv3D"max_pooling3d_3/MaxPool3D:output:0&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_8/ReluReluconv3d_8/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????a
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_8/Relu:activations:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_split]
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1$up_sampling3d_2/concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_split_
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1&up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*3
_output_shapes!
:?????????*
	num_split_
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0&up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:??????????
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_9/Conv3DConv3D!up_sampling3d_2/concat_2:output:0&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_9/ReluReluconv3d_9/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????a
up_sampling3d_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/splitSplit(up_sampling3d_3/split/split_dim:output:0conv3d_9/Relu:activations:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_split]
up_sampling3d_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/concatConcatV2up_sampling3d_3/split:output:0up_sampling3d_3/split:output:0up_sampling3d_3/split:output:1up_sampling3d_3/split:output:1up_sampling3d_3/split:output:2up_sampling3d_3/split:output:2up_sampling3d_3/split:output:3up_sampling3d_3/split:output:3$up_sampling3d_3/concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/split_1Split*up_sampling3d_3/split_1/split_dim:output:0up_sampling3d_3/concat:output:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_split_
up_sampling3d_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/concat_1ConcatV2 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:3 up_sampling3d_3/split_1:output:3&up_sampling3d_3/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_3/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/split_2Split*up_sampling3d_3/split_2/split_dim:output:0!up_sampling3d_3/concat_1:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_split_
up_sampling3d_3/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/concat_2ConcatV2 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:1 up_sampling3d_3/split_2:output:1&up_sampling3d_3/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:??????????
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_10/Conv3DConv3D!up_sampling3d_3/concat_2:output:0'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_10/ReluReluconv3d_10/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
conv3d_11/Conv3D/ReadVariableOpReadVariableOp(conv3d_11_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_11/Conv3DConv3Dconv3d_10/Relu:activations:0'conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_11/BiasAdd/ReadVariableOpReadVariableOp)conv3d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_11/BiasAddBiasAddconv3d_11/Conv3D:output:0(conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????v
conv3d_11/SigmoidSigmoidconv3d_11/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????}
 cropping3d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    
"cropping3d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"    ????????????    
"cropping3d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               ?
cropping3d_1/strided_sliceStridedSliceconv3d_11/Sigmoid:y:0)cropping3d_1/strided_slice/stack:output:0+cropping3d_1/strided_slice/stack_1:output:0+cropping3d_1/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:?????????*

begin_mask*
end_mask~
IdentityIdentity#cropping3d_1/strided_slice:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp2D
 conv3d_11/BiasAdd/ReadVariableOp conv3d_11/BiasAdd/ReadVariableOp2B
conv3d_11/Conv3D/ReadVariableOpconv3d_11/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112144

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
i
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112797

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:A??????????????????????????????????????????????
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling3d_2_layer_call_fn_1112882

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112131l
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112827

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingSAME*
strides	
?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
*__inference_conv3d_8_layer_call_fn_1112866

inputs%
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112107{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112920

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112877

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112107

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?[
?
 __inference__traced_save_1113153
file_prefix.
*savev2_conv3d_6_kernel_read_readvariableop,
(savev2_conv3d_6_bias_read_readvariableop.
*savev2_conv3d_7_kernel_read_readvariableop,
(savev2_conv3d_7_bias_read_readvariableop.
*savev2_conv3d_8_kernel_read_readvariableop,
(savev2_conv3d_8_bias_read_readvariableop.
*savev2_conv3d_9_kernel_read_readvariableop,
(savev2_conv3d_9_bias_read_readvariableop/
+savev2_conv3d_10_kernel_read_readvariableop-
)savev2_conv3d_10_bias_read_readvariableop/
+savev2_conv3d_11_kernel_read_readvariableop-
)savev2_conv3d_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv3d_6_kernel_m_read_readvariableop3
/savev2_adam_conv3d_6_bias_m_read_readvariableop5
1savev2_adam_conv3d_7_kernel_m_read_readvariableop3
/savev2_adam_conv3d_7_bias_m_read_readvariableop5
1savev2_adam_conv3d_8_kernel_m_read_readvariableop3
/savev2_adam_conv3d_8_bias_m_read_readvariableop5
1savev2_adam_conv3d_9_kernel_m_read_readvariableop3
/savev2_adam_conv3d_9_bias_m_read_readvariableop6
2savev2_adam_conv3d_10_kernel_m_read_readvariableop4
0savev2_adam_conv3d_10_bias_m_read_readvariableop6
2savev2_adam_conv3d_11_kernel_m_read_readvariableop4
0savev2_adam_conv3d_11_bias_m_read_readvariableop5
1savev2_adam_conv3d_6_kernel_v_read_readvariableop3
/savev2_adam_conv3d_6_bias_v_read_readvariableop5
1savev2_adam_conv3d_7_kernel_v_read_readvariableop3
/savev2_adam_conv3d_7_bias_v_read_readvariableop5
1savev2_adam_conv3d_8_kernel_v_read_readvariableop3
/savev2_adam_conv3d_8_bias_v_read_readvariableop5
1savev2_adam_conv3d_9_kernel_v_read_readvariableop3
/savev2_adam_conv3d_9_bias_v_read_readvariableop6
2savev2_adam_conv3d_10_kernel_v_read_readvariableop4
0savev2_adam_conv3d_10_bias_v_read_readvariableop6
2savev2_adam_conv3d_11_kernel_v_read_readvariableop4
0savev2_adam_conv3d_11_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*?
value?B?,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv3d_6_kernel_read_readvariableop(savev2_conv3d_6_bias_read_readvariableop*savev2_conv3d_7_kernel_read_readvariableop(savev2_conv3d_7_bias_read_readvariableop*savev2_conv3d_8_kernel_read_readvariableop(savev2_conv3d_8_bias_read_readvariableop*savev2_conv3d_9_kernel_read_readvariableop(savev2_conv3d_9_bias_read_readvariableop+savev2_conv3d_10_kernel_read_readvariableop)savev2_conv3d_10_bias_read_readvariableop+savev2_conv3d_11_kernel_read_readvariableop)savev2_conv3d_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv3d_6_kernel_m_read_readvariableop/savev2_adam_conv3d_6_bias_m_read_readvariableop1savev2_adam_conv3d_7_kernel_m_read_readvariableop/savev2_adam_conv3d_7_bias_m_read_readvariableop1savev2_adam_conv3d_8_kernel_m_read_readvariableop/savev2_adam_conv3d_8_bias_m_read_readvariableop1savev2_adam_conv3d_9_kernel_m_read_readvariableop/savev2_adam_conv3d_9_bias_m_read_readvariableop2savev2_adam_conv3d_10_kernel_m_read_readvariableop0savev2_adam_conv3d_10_bias_m_read_readvariableop2savev2_adam_conv3d_11_kernel_m_read_readvariableop0savev2_adam_conv3d_11_bias_m_read_readvariableop1savev2_adam_conv3d_6_kernel_v_read_readvariableop/savev2_adam_conv3d_6_bias_v_read_readvariableop1savev2_adam_conv3d_7_kernel_v_read_readvariableop/savev2_adam_conv3d_7_bias_v_read_readvariableop1savev2_adam_conv3d_8_kernel_v_read_readvariableop/savev2_adam_conv3d_8_bias_v_read_readvariableop1savev2_adam_conv3d_9_kernel_v_read_readvariableop/savev2_adam_conv3d_9_bias_v_read_readvariableop2savev2_adam_conv3d_10_kernel_v_read_readvariableop0savev2_adam_conv3d_10_bias_v_read_readvariableop2savev2_adam_conv3d_11_kernel_v_read_readvariableop0savev2_adam_conv3d_11_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::::::::::: : : : : : : ::::::::::::::::::::::::: 2(
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
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0	,
*
_output_shapes
:: 


_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::0 ,
*
_output_shapes
:: !

_output_shapes
::0",
*
_output_shapes
:: #

_output_shapes
::0$,
*
_output_shapes
:: %

_output_shapes
::0&,
*
_output_shapes
:: '

_output_shapes
::0(,
*
_output_shapes
:: )

_output_shapes
::0*,
*
_output_shapes
:: +

_output_shapes
::,

_output_shapes
: 
?
?
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112089

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
N
2__inference_zero_padding3d_1_layer_call_fn_1112791

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112010?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
J
.__inference_cropping3d_1_layer_call_fn_1112993

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1112049?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
i
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112010

inputs
identity?
Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
PadPadinputsPad/paddings:output:0*
T0*W
_output_shapesE
C:A??????????????????????????????????????????????
IdentityIdentityPad:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_up_sampling3d_3_layer_call_fn_1112925

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112173l
IdentityIdentityPartitionedCall:output:0*
T0*3
_output_shapes!
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?h
?	
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112668

inputsE
'conv3d_6_conv3d_readvariableop_resource:6
(conv3d_6_biasadd_readvariableop_resource:E
'conv3d_7_conv3d_readvariableop_resource:6
(conv3d_7_biasadd_readvariableop_resource:E
'conv3d_8_conv3d_readvariableop_resource:6
(conv3d_8_biasadd_readvariableop_resource:E
'conv3d_9_conv3d_readvariableop_resource:6
(conv3d_9_biasadd_readvariableop_resource:F
(conv3d_10_conv3d_readvariableop_resource:7
)conv3d_10_biasadd_readvariableop_resource:F
(conv3d_11_conv3d_readvariableop_resource:7
)conv3d_11_biasadd_readvariableop_resource:
identity?? conv3d_10/BiasAdd/ReadVariableOp?conv3d_10/Conv3D/ReadVariableOp? conv3d_11/BiasAdd/ReadVariableOp?conv3d_11/Conv3D/ReadVariableOp?conv3d_6/BiasAdd/ReadVariableOp?conv3d_6/Conv3D/ReadVariableOp?conv3d_7/BiasAdd/ReadVariableOp?conv3d_7/Conv3D/ReadVariableOp?conv3d_8/BiasAdd/ReadVariableOp?conv3d_8/Conv3D/ReadVariableOp?conv3d_9/BiasAdd/ReadVariableOp?conv3d_9/Conv3D/ReadVariableOp?
zero_padding3d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_1/PadPadinputs&zero_padding3d_1/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_6/Conv3D/ReadVariableOpReadVariableOp'conv3d_6_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_6/Conv3DConv3Dzero_padding3d_1/Pad:output:0&conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_6/BiasAdd/ReadVariableOpReadVariableOp(conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_6/BiasAddBiasAddconv3d_6/Conv3D:output:0'conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_6/ReluReluconv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_2/MaxPool3D	MaxPool3Dconv3d_6/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_7/Conv3D/ReadVariableOpReadVariableOp'conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_7/Conv3DConv3D"max_pooling3d_2/MaxPool3D:output:0&conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_7/BiasAdd/ReadVariableOpReadVariableOp(conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_7/BiasAddBiasAddconv3d_7/Conv3D:output:0'conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_7/ReluReluconv3d_7/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_3/MaxPool3D	MaxPool3Dconv3d_7/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_8/Conv3D/ReadVariableOpReadVariableOp'conv3d_8_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_8/Conv3DConv3D"max_pooling3d_3/MaxPool3D:output:0&conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_8/BiasAdd/ReadVariableOpReadVariableOp(conv3d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_8/BiasAddBiasAddconv3d_8/Conv3D:output:0'conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_8/ReluReluconv3d_8/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????a
up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/splitSplit(up_sampling3d_2/split/split_dim:output:0conv3d_8/Relu:activations:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_split]
up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/concatConcatV2up_sampling3d_2/split:output:0up_sampling3d_2/split:output:0up_sampling3d_2/split:output:1up_sampling3d_2/split:output:1$up_sampling3d_2/concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/split_1Split*up_sampling3d_2/split_1/split_dim:output:0up_sampling3d_2/concat:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_split_
up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/concat_1ConcatV2 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:0 up_sampling3d_2/split_1:output:1 up_sampling3d_2/split_1:output:1&up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/split_2Split*up_sampling3d_2/split_2/split_dim:output:0!up_sampling3d_2/concat_1:output:0*
T0*3
_output_shapes!
:?????????*
	num_split_
up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_2/concat_2ConcatV2 up_sampling3d_2/split_2:output:0 up_sampling3d_2/split_2:output:0&up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:??????????
conv3d_9/Conv3D/ReadVariableOpReadVariableOp'conv3d_9_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_9/Conv3DConv3D!up_sampling3d_2/concat_2:output:0&conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
conv3d_9/BiasAdd/ReadVariableOpReadVariableOp(conv3d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_9/BiasAddBiasAddconv3d_9/Conv3D:output:0'conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????n
conv3d_9/ReluReluconv3d_9/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????a
up_sampling3d_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/splitSplit(up_sampling3d_3/split/split_dim:output:0conv3d_9/Relu:activations:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_split]
up_sampling3d_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/concatConcatV2up_sampling3d_3/split:output:0up_sampling3d_3/split:output:0up_sampling3d_3/split:output:1up_sampling3d_3/split:output:1up_sampling3d_3/split:output:2up_sampling3d_3/split:output:2up_sampling3d_3/split:output:3up_sampling3d_3/split:output:3$up_sampling3d_3/concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/split_1Split*up_sampling3d_3/split_1/split_dim:output:0up_sampling3d_3/concat:output:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_split_
up_sampling3d_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/concat_1ConcatV2 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:0 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:1 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:2 up_sampling3d_3/split_1:output:3 up_sampling3d_3/split_1:output:3&up_sampling3d_3/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????c
!up_sampling3d_3/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/split_2Split*up_sampling3d_3/split_2/split_dim:output:0!up_sampling3d_3/concat_1:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_split_
up_sampling3d_3/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
up_sampling3d_3/concat_2ConcatV2 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:0 up_sampling3d_3/split_2:output:1 up_sampling3d_3/split_2:output:1&up_sampling3d_3/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:??????????
conv3d_10/Conv3D/ReadVariableOpReadVariableOp(conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_10/Conv3DConv3D!up_sampling3d_3/concat_2:output:0'conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_10/BiasAdd/ReadVariableOpReadVariableOp)conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_10/BiasAddBiasAddconv3d_10/Conv3D:output:0(conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_10/ReluReluconv3d_10/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
conv3d_11/Conv3D/ReadVariableOpReadVariableOp(conv3d_11_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_11/Conv3DConv3Dconv3d_10/Relu:activations:0'conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_11/BiasAdd/ReadVariableOpReadVariableOp)conv3d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_11/BiasAddBiasAddconv3d_11/Conv3D:output:0(conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????v
conv3d_11/SigmoidSigmoidconv3d_11/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????}
 cropping3d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    
"cropping3d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"    ????????????    
"cropping3d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               ?
cropping3d_1/strided_sliceStridedSliceconv3d_11/Sigmoid:y:0)cropping3d_1/strided_slice/stack:output:0+cropping3d_1/strided_slice/stack_1:output:0+cropping3d_1/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:?????????*

begin_mask*
end_mask~
IdentityIdentity#cropping3d_1/strided_slice:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp!^conv3d_10/BiasAdd/ReadVariableOp ^conv3d_10/Conv3D/ReadVariableOp!^conv3d_11/BiasAdd/ReadVariableOp ^conv3d_11/Conv3D/ReadVariableOp ^conv3d_6/BiasAdd/ReadVariableOp^conv3d_6/Conv3D/ReadVariableOp ^conv3d_7/BiasAdd/ReadVariableOp^conv3d_7/Conv3D/ReadVariableOp ^conv3d_8/BiasAdd/ReadVariableOp^conv3d_8/Conv3D/ReadVariableOp ^conv3d_9/BiasAdd/ReadVariableOp^conv3d_9/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2D
 conv3d_10/BiasAdd/ReadVariableOp conv3d_10/BiasAdd/ReadVariableOp2B
conv3d_10/Conv3D/ReadVariableOpconv3d_10/Conv3D/ReadVariableOp2D
 conv3d_11/BiasAdd/ReadVariableOp conv3d_11/BiasAdd/ReadVariableOp2B
conv3d_11/Conv3D/ReadVariableOpconv3d_11/Conv3D/ReadVariableOp2B
conv3d_6/BiasAdd/ReadVariableOpconv3d_6/BiasAdd/ReadVariableOp2@
conv3d_6/Conv3D/ReadVariableOpconv3d_6/Conv3D/ReadVariableOp2B
conv3d_7/BiasAdd/ReadVariableOpconv3d_7/BiasAdd/ReadVariableOp2@
conv3d_7/Conv3D/ReadVariableOpconv3d_7/Conv3D/ReadVariableOp2B
conv3d_8/BiasAdd/ReadVariableOpconv3d_8/BiasAdd/ReadVariableOp2@
conv3d_8/Conv3D/ReadVariableOpconv3d_8/Conv3D/ReadVariableOp2B
conv3d_9/BiasAdd/ReadVariableOpconv3d_9/BiasAdd/ReadVariableOp2@
conv3d_9/Conv3D/ReadVariableOpconv3d_9/Conv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112203

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????b
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????f
IdentityIdentitySigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?~
?
"__inference__wrapped_model_1112000
input_6R
4sequential_5_conv3d_6_conv3d_readvariableop_resource:C
5sequential_5_conv3d_6_biasadd_readvariableop_resource:R
4sequential_5_conv3d_7_conv3d_readvariableop_resource:C
5sequential_5_conv3d_7_biasadd_readvariableop_resource:R
4sequential_5_conv3d_8_conv3d_readvariableop_resource:C
5sequential_5_conv3d_8_biasadd_readvariableop_resource:R
4sequential_5_conv3d_9_conv3d_readvariableop_resource:C
5sequential_5_conv3d_9_biasadd_readvariableop_resource:S
5sequential_5_conv3d_10_conv3d_readvariableop_resource:D
6sequential_5_conv3d_10_biasadd_readvariableop_resource:S
5sequential_5_conv3d_11_conv3d_readvariableop_resource:D
6sequential_5_conv3d_11_biasadd_readvariableop_resource:
identity??-sequential_5/conv3d_10/BiasAdd/ReadVariableOp?,sequential_5/conv3d_10/Conv3D/ReadVariableOp?-sequential_5/conv3d_11/BiasAdd/ReadVariableOp?,sequential_5/conv3d_11/Conv3D/ReadVariableOp?,sequential_5/conv3d_6/BiasAdd/ReadVariableOp?+sequential_5/conv3d_6/Conv3D/ReadVariableOp?,sequential_5/conv3d_7/BiasAdd/ReadVariableOp?+sequential_5/conv3d_7/Conv3D/ReadVariableOp?,sequential_5/conv3d_8/BiasAdd/ReadVariableOp?+sequential_5/conv3d_8/Conv3D/ReadVariableOp?,sequential_5/conv3d_9/BiasAdd/ReadVariableOp?+sequential_5/conv3d_9/Conv3D/ReadVariableOp?
*sequential_5/zero_padding3d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
!sequential_5/zero_padding3d_1/PadPadinput_63sequential_5/zero_padding3d_1/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
+sequential_5/conv3d_6/Conv3D/ReadVariableOpReadVariableOp4sequential_5_conv3d_6_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
sequential_5/conv3d_6/Conv3DConv3D*sequential_5/zero_padding3d_1/Pad:output:03sequential_5/conv3d_6/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
,sequential_5/conv3d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv3d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/conv3d_6/BiasAddBiasAdd%sequential_5/conv3d_6/Conv3D:output:04sequential_5/conv3d_6/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
sequential_5/conv3d_6/ReluRelu&sequential_5/conv3d_6/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
&sequential_5/max_pooling3d_2/MaxPool3D	MaxPool3D(sequential_5/conv3d_6/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
+sequential_5/conv3d_7/Conv3D/ReadVariableOpReadVariableOp4sequential_5_conv3d_7_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
sequential_5/conv3d_7/Conv3DConv3D/sequential_5/max_pooling3d_2/MaxPool3D:output:03sequential_5/conv3d_7/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
,sequential_5/conv3d_7/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv3d_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/conv3d_7/BiasAddBiasAdd%sequential_5/conv3d_7/Conv3D:output:04sequential_5/conv3d_7/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
sequential_5/conv3d_7/ReluRelu&sequential_5/conv3d_7/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
&sequential_5/max_pooling3d_3/MaxPool3D	MaxPool3D(sequential_5/conv3d_7/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
+sequential_5/conv3d_8/Conv3D/ReadVariableOpReadVariableOp4sequential_5_conv3d_8_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
sequential_5/conv3d_8/Conv3DConv3D/sequential_5/max_pooling3d_3/MaxPool3D:output:03sequential_5/conv3d_8/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
,sequential_5/conv3d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv3d_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/conv3d_8/BiasAddBiasAdd%sequential_5/conv3d_8/Conv3D:output:04sequential_5/conv3d_8/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
sequential_5/conv3d_8/ReluRelu&sequential_5/conv3d_8/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????n
,sequential_5/up_sampling3d_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_5/up_sampling3d_2/splitSplit5sequential_5/up_sampling3d_2/split/split_dim:output:0(sequential_5/conv3d_8/Relu:activations:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitj
(sequential_5/up_sampling3d_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_5/up_sampling3d_2/concatConcatV2+sequential_5/up_sampling3d_2/split:output:0+sequential_5/up_sampling3d_2/split:output:0+sequential_5/up_sampling3d_2/split:output:1+sequential_5/up_sampling3d_2/split:output:11sequential_5/up_sampling3d_2/concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????p
.sequential_5/up_sampling3d_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
$sequential_5/up_sampling3d_2/split_1Split7sequential_5/up_sampling3d_2/split_1/split_dim:output:0,sequential_5/up_sampling3d_2/concat:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitl
*sequential_5/up_sampling3d_2/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_5/up_sampling3d_2/concat_1ConcatV2-sequential_5/up_sampling3d_2/split_1:output:0-sequential_5/up_sampling3d_2/split_1:output:0-sequential_5/up_sampling3d_2/split_1:output:1-sequential_5/up_sampling3d_2/split_1:output:13sequential_5/up_sampling3d_2/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????p
.sequential_5/up_sampling3d_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
$sequential_5/up_sampling3d_2/split_2Split7sequential_5/up_sampling3d_2/split_2/split_dim:output:0.sequential_5/up_sampling3d_2/concat_1:output:0*
T0*3
_output_shapes!
:?????????*
	num_splitl
*sequential_5/up_sampling3d_2/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_5/up_sampling3d_2/concat_2ConcatV2-sequential_5/up_sampling3d_2/split_2:output:0-sequential_5/up_sampling3d_2/split_2:output:03sequential_5/up_sampling3d_2/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:??????????
+sequential_5/conv3d_9/Conv3D/ReadVariableOpReadVariableOp4sequential_5_conv3d_9_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
sequential_5/conv3d_9/Conv3DConv3D.sequential_5/up_sampling3d_2/concat_2:output:03sequential_5/conv3d_9/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
,sequential_5/conv3d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_conv3d_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/conv3d_9/BiasAddBiasAdd%sequential_5/conv3d_9/Conv3D:output:04sequential_5/conv3d_9/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
sequential_5/conv3d_9/ReluRelu&sequential_5/conv3d_9/BiasAdd:output:0*
T0*3
_output_shapes!
:?????????n
,sequential_5/up_sampling3d_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
"sequential_5/up_sampling3d_3/splitSplit5sequential_5/up_sampling3d_3/split/split_dim:output:0(sequential_5/conv3d_9/Relu:activations:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_splitj
(sequential_5/up_sampling3d_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
#sequential_5/up_sampling3d_3/concatConcatV2+sequential_5/up_sampling3d_3/split:output:0+sequential_5/up_sampling3d_3/split:output:0+sequential_5/up_sampling3d_3/split:output:1+sequential_5/up_sampling3d_3/split:output:1+sequential_5/up_sampling3d_3/split:output:2+sequential_5/up_sampling3d_3/split:output:2+sequential_5/up_sampling3d_3/split:output:3+sequential_5/up_sampling3d_3/split:output:31sequential_5/up_sampling3d_3/concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????p
.sequential_5/up_sampling3d_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
$sequential_5/up_sampling3d_3/split_1Split7sequential_5/up_sampling3d_3/split_1/split_dim:output:0,sequential_5/up_sampling3d_3/concat:output:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_splitl
*sequential_5/up_sampling3d_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_5/up_sampling3d_3/concat_1ConcatV2-sequential_5/up_sampling3d_3/split_1:output:0-sequential_5/up_sampling3d_3/split_1:output:0-sequential_5/up_sampling3d_3/split_1:output:1-sequential_5/up_sampling3d_3/split_1:output:1-sequential_5/up_sampling3d_3/split_1:output:2-sequential_5/up_sampling3d_3/split_1:output:2-sequential_5/up_sampling3d_3/split_1:output:3-sequential_5/up_sampling3d_3/split_1:output:33sequential_5/up_sampling3d_3/concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????p
.sequential_5/up_sampling3d_3/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
$sequential_5/up_sampling3d_3/split_2Split7sequential_5/up_sampling3d_3/split_2/split_dim:output:0.sequential_5/up_sampling3d_3/concat_1:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitl
*sequential_5/up_sampling3d_3/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
%sequential_5/up_sampling3d_3/concat_2ConcatV2-sequential_5/up_sampling3d_3/split_2:output:0-sequential_5/up_sampling3d_3/split_2:output:0-sequential_5/up_sampling3d_3/split_2:output:1-sequential_5/up_sampling3d_3/split_2:output:13sequential_5/up_sampling3d_3/concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:??????????
,sequential_5/conv3d_10/Conv3D/ReadVariableOpReadVariableOp5sequential_5_conv3d_10_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
sequential_5/conv3d_10/Conv3DConv3D.sequential_5/up_sampling3d_3/concat_2:output:04sequential_5/conv3d_10/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
-sequential_5/conv3d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv3d_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/conv3d_10/BiasAddBiasAdd&sequential_5/conv3d_10/Conv3D:output:05sequential_5/conv3d_10/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
sequential_5/conv3d_10/ReluRelu'sequential_5/conv3d_10/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
,sequential_5/conv3d_11/Conv3D/ReadVariableOpReadVariableOp5sequential_5_conv3d_11_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
sequential_5/conv3d_11/Conv3DConv3D)sequential_5/conv3d_10/Relu:activations:04sequential_5/conv3d_11/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
-sequential_5/conv3d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv3d_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/conv3d_11/BiasAddBiasAdd&sequential_5/conv3d_11/Conv3D:output:05sequential_5/conv3d_11/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
sequential_5/conv3d_11/SigmoidSigmoid'sequential_5/conv3d_11/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
-sequential_5/cropping3d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    ?
/sequential_5/cropping3d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"    ????????????    ?
/sequential_5/cropping3d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               ?
'sequential_5/cropping3d_1/strided_sliceStridedSlice"sequential_5/conv3d_11/Sigmoid:y:06sequential_5/cropping3d_1/strided_slice/stack:output:08sequential_5/cropping3d_1/strided_slice/stack_1:output:08sequential_5/cropping3d_1/strided_slice/stack_2:output:0*
Index0*
T0*3
_output_shapes!
:?????????*

begin_mask*
end_mask?
IdentityIdentity0sequential_5/cropping3d_1/strided_slice:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp.^sequential_5/conv3d_10/BiasAdd/ReadVariableOp-^sequential_5/conv3d_10/Conv3D/ReadVariableOp.^sequential_5/conv3d_11/BiasAdd/ReadVariableOp-^sequential_5/conv3d_11/Conv3D/ReadVariableOp-^sequential_5/conv3d_6/BiasAdd/ReadVariableOp,^sequential_5/conv3d_6/Conv3D/ReadVariableOp-^sequential_5/conv3d_7/BiasAdd/ReadVariableOp,^sequential_5/conv3d_7/Conv3D/ReadVariableOp-^sequential_5/conv3d_8/BiasAdd/ReadVariableOp,^sequential_5/conv3d_8/Conv3D/ReadVariableOp-^sequential_5/conv3d_9/BiasAdd/ReadVariableOp,^sequential_5/conv3d_9/Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2^
-sequential_5/conv3d_10/BiasAdd/ReadVariableOp-sequential_5/conv3d_10/BiasAdd/ReadVariableOp2\
,sequential_5/conv3d_10/Conv3D/ReadVariableOp,sequential_5/conv3d_10/Conv3D/ReadVariableOp2^
-sequential_5/conv3d_11/BiasAdd/ReadVariableOp-sequential_5/conv3d_11/BiasAdd/ReadVariableOp2\
,sequential_5/conv3d_11/Conv3D/ReadVariableOp,sequential_5/conv3d_11/Conv3D/ReadVariableOp2\
,sequential_5/conv3d_6/BiasAdd/ReadVariableOp,sequential_5/conv3d_6/BiasAdd/ReadVariableOp2Z
+sequential_5/conv3d_6/Conv3D/ReadVariableOp+sequential_5/conv3d_6/Conv3D/ReadVariableOp2\
,sequential_5/conv3d_7/BiasAdd/ReadVariableOp,sequential_5/conv3d_7/BiasAdd/ReadVariableOp2Z
+sequential_5/conv3d_7/Conv3D/ReadVariableOp+sequential_5/conv3d_7/Conv3D/ReadVariableOp2\
,sequential_5/conv3d_8/BiasAdd/ReadVariableOp,sequential_5/conv3d_8/BiasAdd/ReadVariableOp2Z
+sequential_5/conv3d_8/Conv3D/ReadVariableOp+sequential_5/conv3d_8/Conv3D/ReadVariableOp2\
,sequential_5/conv3d_9/BiasAdd/ReadVariableOp,sequential_5/conv3d_9/BiasAdd/ReadVariableOp2Z
+sequential_5/conv3d_9/Conv3D/ReadVariableOp+sequential_5/conv3d_9/Conv3D/ReadVariableOp:\ X
3
_output_shapes!
:?????????
!
_user_specified_name	input_6
?
?
.__inference_sequential_5_layer_call_fn_1112581

inputs%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112381{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112817

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????\
ReluReluBiasAdd:output:0*
T0*3
_output_shapes!
:?????????m
IdentityIdentityRelu:activations:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_5_layer_call_fn_1112437
input_6%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112381{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:?????????
!
_user_specified_name	input_6
?
?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112988

inputs<
conv3d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????b
SigmoidSigmoidBiasAdd:output:0*
T0*3
_output_shapes!
:?????????f
IdentityIdentitySigmoid:y:0^NoOp*
T0*3
_output_shapes!
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112022

inputs
identity?
	MaxPool3D	MaxPool3Dinputs*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*
ksize	
*
paddingSAME*
strides	
?
IdentityIdentityMaxPool3D:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?	
e
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1113001

inputs
identityp
strided_slice/stackConst*
_output_shapes
:*
dtype0*)
value B"                    r
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*)
value B"    ????????????    r
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*)
value B"               ?
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????*

begin_mask*
end_mask?
IdentityIdentitystrided_slice:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling3d_3_layer_call_fn_1112852

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:A?????????????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112034?
IdentityIdentityPartitionedCall:output:0*
T0*W
_output_shapesE
C:A?????????????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:A?????????????????????????????????????????????: {
W
_output_shapesE
C:A?????????????????????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_5_layer_call_fn_1112238
input_6%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112211{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:?????????
!
_user_specified_name	input_6
?4
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112211

inputs.
conv3d_6_1112072:
conv3d_6_1112074:.
conv3d_7_1112090:
conv3d_7_1112092:.
conv3d_8_1112108:
conv3d_8_1112110:.
conv3d_9_1112145:
conv3d_9_1112147:/
conv3d_10_1112187:
conv3d_10_1112189:/
conv3d_11_1112204:
conv3d_11_1112206:
identity??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
 zero_padding3d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112010?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_6_1112072conv3d_6_1112074*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112071?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112022?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_7_1112090conv3d_7_1112092*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112089?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112034?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_1112108conv3d_8_1112110*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112107?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112131?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_9_1112145conv3d_9_1112147*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112144?
up_sampling3d_3/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112173?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_3/PartitionedCall:output:0conv3d_10_1112187conv3d_10_1112189*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112186?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_1112204conv3d_11_1112206*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112203?
cropping3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1112049?
IdentityIdentity%cropping3d_1/PartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
h
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112948

inputs
identityQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
splitSplitsplit/split_dim:output:0inputs*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_splitM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2split:output:0split:output:0split:output:1split:output:1split:output:2split:output:2split:output:3split:output:3concat/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_1Splitsplit_1/split_dim:output:0concat:output:0*
T0*?
_output_shapes~
|:?????????:?????????:?????????:?????????*
	num_splitO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_1ConcatV2split_1:output:0split_1:output:0split_1:output:1split_1:output:1split_1:output:2split_1:output:2split_1:output:3split_1:output:3concat_1/axis:output:0*
N*
T0*3
_output_shapes!
:?????????S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :?
split_2Splitsplit_2/split_dim:output:0concat_1:output:0*
T0*R
_output_shapes@
>:?????????:?????????*
	num_splitO
concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concat_2ConcatV2split_2:output:0split_2:output:0split_2:output:1split_2:output:1concat_2/axis:output:0*
N*
T0*3
_output_shapes!
:?????????e
IdentityIdentityconcat_2:output:0*
T0*3
_output_shapes!
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?4
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112381

inputs.
conv3d_6_1112345:
conv3d_6_1112347:.
conv3d_7_1112351:
conv3d_7_1112353:.
conv3d_8_1112357:
conv3d_8_1112359:.
conv3d_9_1112363:
conv3d_9_1112365:/
conv3d_10_1112369:
conv3d_10_1112371:/
conv3d_11_1112374:
conv3d_11_1112376:
identity??!conv3d_10/StatefulPartitionedCall?!conv3d_11/StatefulPartitionedCall? conv3d_6/StatefulPartitionedCall? conv3d_7/StatefulPartitionedCall? conv3d_8/StatefulPartitionedCall? conv3d_9/StatefulPartitionedCall?
 zero_padding3d_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112010?
 conv3d_6/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_1/PartitionedCall:output:0conv3d_6_1112345conv3d_6_1112347*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112071?
max_pooling3d_2/PartitionedCallPartitionedCall)conv3d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112022?
 conv3d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_2/PartitionedCall:output:0conv3d_7_1112351conv3d_7_1112353*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112089?
max_pooling3d_3/PartitionedCallPartitionedCall)conv3d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112034?
 conv3d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling3d_3/PartitionedCall:output:0conv3d_8_1112357conv3d_8_1112359*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112107?
up_sampling3d_2/PartitionedCallPartitionedCall)conv3d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112131?
 conv3d_9/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_2/PartitionedCall:output:0conv3d_9_1112363conv3d_9_1112365*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112144?
up_sampling3d_3/PartitionedCallPartitionedCall)conv3d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112173?
!conv3d_10/StatefulPartitionedCallStatefulPartitionedCall(up_sampling3d_3/PartitionedCall:output:0conv3d_10_1112369conv3d_10_1112371*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112186?
!conv3d_11/StatefulPartitionedCallStatefulPartitionedCall*conv3d_10/StatefulPartitionedCall:output:0conv3d_11_1112374conv3d_11_1112376*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112203?
cropping3d_1/PartitionedCallPartitionedCall*conv3d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1112049?
IdentityIdentity%cropping3d_1/PartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:??????????
NoOpNoOp"^conv3d_10/StatefulPartitionedCall"^conv3d_11/StatefulPartitionedCall!^conv3d_6/StatefulPartitionedCall!^conv3d_7/StatefulPartitionedCall!^conv3d_8/StatefulPartitionedCall!^conv3d_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 2F
!conv3d_10/StatefulPartitionedCall!conv3d_10/StatefulPartitionedCall2F
!conv3d_11/StatefulPartitionedCall!conv3d_11/StatefulPartitionedCall2D
 conv3d_6/StatefulPartitionedCall conv3d_6/StatefulPartitionedCall2D
 conv3d_7/StatefulPartitionedCall conv3d_7/StatefulPartitionedCall2D
 conv3d_8/StatefulPartitionedCall conv3d_8/StatefulPartitionedCall2D
 conv3d_9/StatefulPartitionedCall conv3d_9/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_1112786
input_6%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:'
	unknown_3:
	unknown_4:'
	unknown_5:
	unknown_6:'
	unknown_7:
	unknown_8:'
	unknown_9:

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *3
_output_shapes!
:?????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_1112000{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*3
_output_shapes!
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
3
_output_shapes!
:?????????
!
_user_specified_name	input_6"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
input_6<
serving_default_input_6:0?????????L
cropping3d_1<
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
?
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
?
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
?

\kernel
]bias
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
?
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
?
jiter

kbeta_1

lbeta_2
	mdecay
nlearning_ratem?m?*m?+m?8m?9m?Fm?Gm?Tm?Um?\m?]m?v?v?*v?+v?8v?9v?Fv?Gv?Tv?Uv?\v?]v?"
	optimizer
v
0
1
*2
+3
84
95
F6
G7
T8
U9
\10
]11"
trackable_list_wrapper
v
0
1
*2
+3
84
95
F6
G7
T8
U9
\10
]11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_5_layer_call_fn_1112238
.__inference_sequential_5_layer_call_fn_1112552
.__inference_sequential_5_layer_call_fn_1112581
.__inference_sequential_5_layer_call_fn_1112437?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112668
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112755
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112477
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112517?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1112000input_6"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
tserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_zero_padding3d_1_layer_call_fn_1112791?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112797?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-:+2conv3d_6/kernel
:2conv3d_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv3d_6_layer_call_fn_1112806?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112817?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling3d_2_layer_call_fn_1112822?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112827?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-:+2conv3d_7/kernel
:2conv3d_7/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv3d_7_layer_call_fn_1112836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112847?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_max_pooling3d_3_layer_call_fn_1112852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112857?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-:+2conv3d_8/kernel
:2conv3d_8/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv3d_8_layer_call_fn_1112866?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_up_sampling3d_2_layer_call_fn_1112882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112900?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-:+2conv3d_9/kernel
:2conv3d_9/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv3d_9_layer_call_fn_1112909?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112920?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
?2?
1__inference_up_sampling3d_3_layer_call_fn_1112925?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112948?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.:,2conv3d_10/kernel
:2conv3d_10/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv3d_10_layer_call_fn_1112957?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112968?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.:,2conv3d_11/kernel
:2conv3d_11/bias
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv3d_11_layer_call_fn_1112977?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112988?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_cropping3d_1_layer_call_fn_1112993?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1113001?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
v
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
11"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_signature_wrapper_1112786input_6"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
2:02Adam/conv3d_6/kernel/m
 :2Adam/conv3d_6/bias/m
2:02Adam/conv3d_7/kernel/m
 :2Adam/conv3d_7/bias/m
2:02Adam/conv3d_8/kernel/m
 :2Adam/conv3d_8/bias/m
2:02Adam/conv3d_9/kernel/m
 :2Adam/conv3d_9/bias/m
3:12Adam/conv3d_10/kernel/m
!:2Adam/conv3d_10/bias/m
3:12Adam/conv3d_11/kernel/m
!:2Adam/conv3d_11/bias/m
2:02Adam/conv3d_6/kernel/v
 :2Adam/conv3d_6/bias/v
2:02Adam/conv3d_7/kernel/v
 :2Adam/conv3d_7/bias/v
2:02Adam/conv3d_8/kernel/v
 :2Adam/conv3d_8/bias/v
2:02Adam/conv3d_9/kernel/v
 :2Adam/conv3d_9/bias/v
3:12Adam/conv3d_10/kernel/v
!:2Adam/conv3d_10/bias/v
3:12Adam/conv3d_11/kernel/v
!:2Adam/conv3d_11/bias/v?
"__inference__wrapped_model_1112000?*+89FGTU\]<?9
2?/
-?*
input_6?????????
? "G?D
B
cropping3d_12?/
cropping3d_1??????????
F__inference_conv3d_10_layer_call_and_return_conditional_losses_1112968tTU;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_10_layer_call_fn_1112957gTU;?8
1?.
,?)
inputs?????????
? "$?!??????????
F__inference_conv3d_11_layer_call_and_return_conditional_losses_1112988t\];?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_11_layer_call_fn_1112977g\];?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_conv3d_6_layer_call_and_return_conditional_losses_1112817t;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
*__inference_conv3d_6_layer_call_fn_1112806g;?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_conv3d_7_layer_call_and_return_conditional_losses_1112847t*+;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
*__inference_conv3d_7_layer_call_fn_1112836g*+;?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_conv3d_8_layer_call_and_return_conditional_losses_1112877t89;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
*__inference_conv3d_8_layer_call_fn_1112866g89;?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_conv3d_9_layer_call_and_return_conditional_losses_1112920tFG;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
*__inference_conv3d_9_layer_call_fn_1112909gFG;?8
1?.
,?)
inputs?????????
? "$?!??????????
I__inference_cropping3d_1_layer_call_and_return_conditional_losses_1113001?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
.__inference_cropping3d_1_layer_call_fn_1112993?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
L__inference_max_pooling3d_2_layer_call_and_return_conditional_losses_1112827?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
1__inference_max_pooling3d_2_layer_call_fn_1112822?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
L__inference_max_pooling3d_3_layer_call_and_return_conditional_losses_1112857?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
1__inference_max_pooling3d_3_layer_call_fn_1112852?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112477?*+89FGTU\]D?A
:?7
-?*
input_6?????????
p 

 
? "1?.
'?$
0?????????
? ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112517?*+89FGTU\]D?A
:?7
-?*
input_6?????????
p

 
? "1?.
'?$
0?????????
? ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112668?*+89FGTU\]C?@
9?6
,?)
inputs?????????
p 

 
? "1?.
'?$
0?????????
? ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_1112755?*+89FGTU\]C?@
9?6
,?)
inputs?????????
p

 
? "1?.
'?$
0?????????
? ?
.__inference_sequential_5_layer_call_fn_1112238z*+89FGTU\]D?A
:?7
-?*
input_6?????????
p 

 
? "$?!??????????
.__inference_sequential_5_layer_call_fn_1112437z*+89FGTU\]D?A
:?7
-?*
input_6?????????
p

 
? "$?!??????????
.__inference_sequential_5_layer_call_fn_1112552y*+89FGTU\]C?@
9?6
,?)
inputs?????????
p 

 
? "$?!??????????
.__inference_sequential_5_layer_call_fn_1112581y*+89FGTU\]C?@
9?6
,?)
inputs?????????
p

 
? "$?!??????????
%__inference_signature_wrapper_1112786?*+89FGTU\]G?D
? 
=?:
8
input_6-?*
input_6?????????"G?D
B
cropping3d_12?/
cropping3d_1??????????
L__inference_up_sampling3d_2_layer_call_and_return_conditional_losses_1112900p;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
1__inference_up_sampling3d_2_layer_call_fn_1112882c;?8
1?.
,?)
inputs?????????
? "$?!??????????
L__inference_up_sampling3d_3_layer_call_and_return_conditional_losses_1112948p;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
1__inference_up_sampling3d_3_layer_call_fn_1112925c;?8
1?.
,?)
inputs?????????
? "$?!??????????
M__inference_zero_padding3d_1_layer_call_and_return_conditional_losses_1112797?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_zero_padding3d_1_layer_call_fn_1112791?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA?????????????????????????????????????????????