??
??
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
 ?"serve*2.8.02unknown8??
?
conv3d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_16/kernel
?
$conv3d_16/kernel/Read/ReadVariableOpReadVariableOpconv3d_16/kernel**
_output_shapes
:*
dtype0
t
conv3d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_16/bias
m
"conv3d_16/bias/Read/ReadVariableOpReadVariableOpconv3d_16/bias*
_output_shapes
:*
dtype0
?
conv3d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_17/kernel
?
$conv3d_17/kernel/Read/ReadVariableOpReadVariableOpconv3d_17/kernel**
_output_shapes
:*
dtype0
t
conv3d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_17/bias
m
"conv3d_17/bias/Read/ReadVariableOpReadVariableOpconv3d_17/bias*
_output_shapes
:*
dtype0
z
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)R* 
shared_namedense_48/kernel
s
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes

:)R*
dtype0
r
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*
shared_namedense_48/bias
k
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
_output_shapes
:R*
dtype0
z
dense_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR* 
shared_namedense_49/kernel
s
#dense_49/kernel/Read/ReadVariableOpReadVariableOpdense_49/kernel*
_output_shapes

:RR*
dtype0
r
dense_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*
shared_namedense_49/bias
k
!dense_49/bias/Read/ReadVariableOpReadVariableOpdense_49/bias*
_output_shapes
:R*
dtype0
z
dense_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR* 
shared_namedense_50/kernel
s
#dense_50/kernel/Read/ReadVariableOpReadVariableOpdense_50/kernel*
_output_shapes

:RR*
dtype0
r
dense_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*
shared_namedense_50/bias
k
!dense_50/bias/Read/ReadVariableOpReadVariableOpdense_50/bias*
_output_shapes
:R*
dtype0
z
dense_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR* 
shared_namedense_51/kernel
s
#dense_51/kernel/Read/ReadVariableOpReadVariableOpdense_51/kernel*
_output_shapes

:RR*
dtype0
r
dense_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*
shared_namedense_51/bias
k
!dense_51/bias/Read/ReadVariableOpReadVariableOpdense_51/bias*
_output_shapes
:R*
dtype0
z
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR* 
shared_namedense_52/kernel
s
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel*
_output_shapes

:RR*
dtype0
r
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*
shared_namedense_52/bias
k
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes
:R*
dtype0
z
dense_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:R* 
shared_namedense_53/kernel
s
#dense_53/kernel/Read/ReadVariableOpReadVariableOpdense_53/kernel*
_output_shapes

:R*
dtype0
r
dense_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_53/bias
k
!dense_53/bias/Read/ReadVariableOpReadVariableOpdense_53/bias*
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
?
Adam/conv3d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_16/kernel/m
?
+Adam/conv3d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_16/bias/m
{
)Adam/conv3d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_17/kernel/m
?
+Adam/conv3d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_17/bias/m
{
)Adam/conv3d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)R*'
shared_nameAdam/dense_48/kernel/m
?
*Adam/dense_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/m*
_output_shapes

:)R*
dtype0
?
Adam/dense_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_48/bias/m
y
(Adam/dense_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/m*
_output_shapes
:R*
dtype0
?
Adam/dense_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_49/kernel/m
?
*Adam/dense_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/m*
_output_shapes

:RR*
dtype0
?
Adam/dense_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_49/bias/m
y
(Adam/dense_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/m*
_output_shapes
:R*
dtype0
?
Adam/dense_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_50/kernel/m
?
*Adam/dense_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/m*
_output_shapes

:RR*
dtype0
?
Adam/dense_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_50/bias/m
y
(Adam/dense_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/m*
_output_shapes
:R*
dtype0
?
Adam/dense_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_51/kernel/m
?
*Adam/dense_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/m*
_output_shapes

:RR*
dtype0
?
Adam/dense_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_51/bias/m
y
(Adam/dense_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/m*
_output_shapes
:R*
dtype0
?
Adam/dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_52/kernel/m
?
*Adam/dense_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/m*
_output_shapes

:RR*
dtype0
?
Adam/dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_52/bias/m
y
(Adam/dense_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/m*
_output_shapes
:R*
dtype0
?
Adam/dense_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:R*'
shared_nameAdam/dense_53/kernel/m
?
*Adam/dense_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/m*
_output_shapes

:R*
dtype0
?
Adam/dense_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/m
y
(Adam/dense_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_16/kernel/v
?
+Adam/conv3d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_16/bias/v
{
)Adam/conv3d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_16/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_17/kernel/v
?
+Adam/conv3d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_17/bias/v
{
)Adam/conv3d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_17/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)R*'
shared_nameAdam/dense_48/kernel/v
?
*Adam/dense_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/v*
_output_shapes

:)R*
dtype0
?
Adam/dense_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_48/bias/v
y
(Adam/dense_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/v*
_output_shapes
:R*
dtype0
?
Adam/dense_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_49/kernel/v
?
*Adam/dense_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/kernel/v*
_output_shapes

:RR*
dtype0
?
Adam/dense_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_49/bias/v
y
(Adam/dense_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_49/bias/v*
_output_shapes
:R*
dtype0
?
Adam/dense_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_50/kernel/v
?
*Adam/dense_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/kernel/v*
_output_shapes

:RR*
dtype0
?
Adam/dense_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_50/bias/v
y
(Adam/dense_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_50/bias/v*
_output_shapes
:R*
dtype0
?
Adam/dense_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_51/kernel/v
?
*Adam/dense_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/kernel/v*
_output_shapes

:RR*
dtype0
?
Adam/dense_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_51/bias/v
y
(Adam/dense_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_51/bias/v*
_output_shapes
:R*
dtype0
?
Adam/dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:RR*'
shared_nameAdam/dense_52/kernel/v
?
*Adam/dense_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/v*
_output_shapes

:RR*
dtype0
?
Adam/dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:R*%
shared_nameAdam/dense_52/bias/v
y
(Adam/dense_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/v*
_output_shapes
:R*
dtype0
?
Adam/dense_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:R*'
shared_nameAdam/dense_53/kernel/v
?
*Adam/dense_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/kernel/v*
_output_shapes

:R*
dtype0
?
Adam/dense_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_53/bias/v
y
(Adam/dense_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_53/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?x
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?w
value?wB?w B?w
?
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
* 
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
?

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
?

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
?

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
?

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses*
?

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses*
?

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
?
witer

xbeta_1

ybeta_2
	zdecay
{learning_ratem? m?-m?.m?Gm?Hm?Om?Pm?Wm?Xm?_m?`m?gm?hm?om?pm?v? v?-v?.v?Gv?Hv?Ov?Pv?Wv?Xv?_v?`v?gv?hv?ov?pv?*
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
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
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
?serving_default* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_16/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_16/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv3d_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_48/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_48/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_49/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_49/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_50/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_50/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

W0
X1*

W0
X1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_51/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_51/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

_0
`1*

_0
`1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_52/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_52/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_53/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_53/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
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

?0
?1
?2*
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

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
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
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
?}
VARIABLE_VALUEAdam/conv3d_16/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_16/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_48/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_48/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_49/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_49/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_50/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_50/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_51/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_51/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_52/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_52/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_53/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_53/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_16/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_16/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_48/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_48/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_49/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_49/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_50/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_50/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_51/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_51/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_52/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_52/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_53/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_53/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
v
serving_default_catPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_convPlaceholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_catserving_default_convconv3d_16/kernelconv3d_16/biasconv3d_17/kernelconv3d_17/biasdense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_2179455
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_16/kernel/Read/ReadVariableOp"conv3d_16/bias/Read/ReadVariableOp$conv3d_17/kernel/Read/ReadVariableOp"conv3d_17/bias/Read/ReadVariableOp#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOp#dense_49/kernel/Read/ReadVariableOp!dense_49/bias/Read/ReadVariableOp#dense_50/kernel/Read/ReadVariableOp!dense_50/bias/Read/ReadVariableOp#dense_51/kernel/Read/ReadVariableOp!dense_51/bias/Read/ReadVariableOp#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOp#dense_53/kernel/Read/ReadVariableOp!dense_53/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp+Adam/conv3d_16/kernel/m/Read/ReadVariableOp)Adam/conv3d_16/bias/m/Read/ReadVariableOp+Adam/conv3d_17/kernel/m/Read/ReadVariableOp)Adam/conv3d_17/bias/m/Read/ReadVariableOp*Adam/dense_48/kernel/m/Read/ReadVariableOp(Adam/dense_48/bias/m/Read/ReadVariableOp*Adam/dense_49/kernel/m/Read/ReadVariableOp(Adam/dense_49/bias/m/Read/ReadVariableOp*Adam/dense_50/kernel/m/Read/ReadVariableOp(Adam/dense_50/bias/m/Read/ReadVariableOp*Adam/dense_51/kernel/m/Read/ReadVariableOp(Adam/dense_51/bias/m/Read/ReadVariableOp*Adam/dense_52/kernel/m/Read/ReadVariableOp(Adam/dense_52/bias/m/Read/ReadVariableOp*Adam/dense_53/kernel/m/Read/ReadVariableOp(Adam/dense_53/bias/m/Read/ReadVariableOp+Adam/conv3d_16/kernel/v/Read/ReadVariableOp)Adam/conv3d_16/bias/v/Read/ReadVariableOp+Adam/conv3d_17/kernel/v/Read/ReadVariableOp)Adam/conv3d_17/bias/v/Read/ReadVariableOp*Adam/dense_48/kernel/v/Read/ReadVariableOp(Adam/dense_48/bias/v/Read/ReadVariableOp*Adam/dense_49/kernel/v/Read/ReadVariableOp(Adam/dense_49/bias/v/Read/ReadVariableOp*Adam/dense_50/kernel/v/Read/ReadVariableOp(Adam/dense_50/bias/v/Read/ReadVariableOp*Adam/dense_51/kernel/v/Read/ReadVariableOp(Adam/dense_51/bias/v/Read/ReadVariableOp*Adam/dense_52/kernel/v/Read/ReadVariableOp(Adam/dense_52/bias/v/Read/ReadVariableOp*Adam/dense_53/kernel/v/Read/ReadVariableOp(Adam/dense_53/bias/v/Read/ReadVariableOpConst*H
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_2179870
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_16/kernelconv3d_16/biasconv3d_17/kernelconv3d_17/biasdense_48/kerneldense_48/biasdense_49/kerneldense_49/biasdense_50/kerneldense_50/biasdense_51/kerneldense_51/biasdense_52/kerneldense_52/biasdense_53/kerneldense_53/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/conv3d_16/kernel/mAdam/conv3d_16/bias/mAdam/conv3d_17/kernel/mAdam/conv3d_17/bias/mAdam/dense_48/kernel/mAdam/dense_48/bias/mAdam/dense_49/kernel/mAdam/dense_49/bias/mAdam/dense_50/kernel/mAdam/dense_50/bias/mAdam/dense_51/kernel/mAdam/dense_51/bias/mAdam/dense_52/kernel/mAdam/dense_52/bias/mAdam/dense_53/kernel/mAdam/dense_53/bias/mAdam/conv3d_16/kernel/vAdam/conv3d_16/bias/vAdam/conv3d_17/kernel/vAdam/conv3d_17/bias/vAdam/dense_48/kernel/vAdam/dense_48/bias/vAdam/dense_49/kernel/vAdam/dense_49/bias/vAdam/dense_50/kernel/vAdam/dense_50/bias/vAdam/dense_51/kernel/vAdam/dense_51/bias/vAdam/dense_52/kernel/vAdam/dense_52/bias/vAdam/dense_53/kernel/vAdam/dense_53/bias/v*G
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_2180057??	
?
?
)__inference_model_8_layer_call_fn_2178840
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:)R
	unknown_4:R
	unknown_5:RR
	unknown_6:R
	unknown_7:RR
	unknown_8:R
	unknown_9:RR

unknown_10:R

unknown_11:RR

unknown_12:R

unknown_13:R

unknown_14:
identity??StatefulPartitionedCall?
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_8_layer_call_and_return_conditional_losses_2178805o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?

?
E__inference_dense_48_layer_call_and_return_conditional_losses_2178714

inputs0
matmul_readvariableop_resource:)R-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:)R*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_17_layer_call_fn_2179521

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
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2178637?
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
?
i
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2178637

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
?:
?
D__inference_model_8_layer_call_and_return_conditional_losses_2179024

inputs
inputs_1/
conv3d_16_2178979:
conv3d_16_2178981:/
conv3d_17_2178985:
conv3d_17_2178987:"
dense_48_2178993:)R
dense_48_2178995:R"
dense_49_2178998:RR
dense_49_2179000:R"
dense_50_2179003:RR
dense_50_2179005:R"
dense_51_2179008:RR
dense_51_2179010:R"
dense_52_2179013:RR
dense_52_2179015:R"
dense_53_2179018:R
dense_53_2179020:
identity??!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
 zero_padding3d_8/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2178613?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_8/PartitionedCall:output:0conv3d_16_2178979conv3d_16_2178981*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2178661?
 max_pooling3d_16/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2178625?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_16/PartitionedCall:output:0conv3d_17_2178985conv3d_17_2178987*
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
GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2178679?
 max_pooling3d_17/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2178637?
flatten_8/PartitionedCallPartitionedCall)max_pooling3d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2178692?
concatenate_8/PartitionedCallPartitionedCallinputs_1"flatten_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2178701?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0dense_48_2178993dense_48_2178995*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2178714?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_2178998dense_49_2179000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2178731?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2179003dense_50_2179005*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2178748?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_2179008dense_51_2179010*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2178765?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_2179013dense_52_2179015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_2178782?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2179018dense_53_2179020*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_2178798x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2178613

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
?:
?
D__inference_model_8_layer_call_and_return_conditional_losses_2178805

inputs
inputs_1/
conv3d_16_2178662:
conv3d_16_2178664:/
conv3d_17_2178680:
conv3d_17_2178682:"
dense_48_2178715:)R
dense_48_2178717:R"
dense_49_2178732:RR
dense_49_2178734:R"
dense_50_2178749:RR
dense_50_2178751:R"
dense_51_2178766:RR
dense_51_2178768:R"
dense_52_2178783:RR
dense_52_2178785:R"
dense_53_2178799:R
dense_53_2178801:
identity??!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
 zero_padding3d_8/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2178613?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_8/PartitionedCall:output:0conv3d_16_2178662conv3d_16_2178664*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2178661?
 max_pooling3d_16/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2178625?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_16/PartitionedCall:output:0conv3d_17_2178680conv3d_17_2178682*
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
GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2178679?
 max_pooling3d_17/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2178637?
flatten_8/PartitionedCallPartitionedCall)max_pooling3d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2178692?
concatenate_8/PartitionedCallPartitionedCallinputs_1"flatten_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2178701?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0dense_48_2178715dense_48_2178717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2178714?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_2178732dense_49_2178734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2178731?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2178749dense_50_2178751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2178748?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_2178766dense_51_2178768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2178765?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_2178783dense_52_2178785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_2178782?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2178799dense_53_2178801*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_2178798x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_8_layer_call_fn_2179531

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2178692`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2179455
cat
conv%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:)R
	unknown_4:R
	unknown_5:RR
	unknown_6:R
	unknown_7:RR
	unknown_8:R
	unknown_9:RR

unknown_10:R

unknown_11:RR

unknown_12:R

unknown_13:R

unknown_14:
identity??StatefulPartitionedCall?
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_2178603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????

_user_specified_namecat:YU
3
_output_shapes!
:?????????

_user_specified_nameconv
?
?
)__inference_model_8_layer_call_fn_2179279
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:)R
	unknown_4:R
	unknown_5:RR
	unknown_6:R
	unknown_7:RR
	unknown_8:R
	unknown_9:RR

unknown_10:R

unknown_11:RR

unknown_12:R

unknown_13:R

unknown_14:
identity??StatefulPartitionedCall?
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_8_layer_call_and_return_conditional_losses_2179024o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

?
E__inference_dense_52_layer_call_and_return_conditional_losses_2179650

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?

?
E__inference_dense_52_layer_call_and_return_conditional_losses_2178782

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?

?
E__inference_dense_48_layer_call_and_return_conditional_losses_2179570

inputs0
matmul_readvariableop_resource:)R-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:)R*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_2178692

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_51_layer_call_and_return_conditional_losses_2178765

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2179486

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
?
t
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2178701

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
:?????????)W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????)"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2178661

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
?
N
2__inference_zero_padding3d_8_layer_call_fn_2179460

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
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2178613?
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

?
E__inference_dense_51_layer_call_and_return_conditional_losses_2179630

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?\
?
"__inference__wrapped_model_2178603
conv
catN
0model_8_conv3d_16_conv3d_readvariableop_resource:?
1model_8_conv3d_16_biasadd_readvariableop_resource:N
0model_8_conv3d_17_conv3d_readvariableop_resource:?
1model_8_conv3d_17_biasadd_readvariableop_resource:A
/model_8_dense_48_matmul_readvariableop_resource:)R>
0model_8_dense_48_biasadd_readvariableop_resource:RA
/model_8_dense_49_matmul_readvariableop_resource:RR>
0model_8_dense_49_biasadd_readvariableop_resource:RA
/model_8_dense_50_matmul_readvariableop_resource:RR>
0model_8_dense_50_biasadd_readvariableop_resource:RA
/model_8_dense_51_matmul_readvariableop_resource:RR>
0model_8_dense_51_biasadd_readvariableop_resource:RA
/model_8_dense_52_matmul_readvariableop_resource:RR>
0model_8_dense_52_biasadd_readvariableop_resource:RA
/model_8_dense_53_matmul_readvariableop_resource:R>
0model_8_dense_53_biasadd_readvariableop_resource:
identity??(model_8/conv3d_16/BiasAdd/ReadVariableOp?'model_8/conv3d_16/Conv3D/ReadVariableOp?(model_8/conv3d_17/BiasAdd/ReadVariableOp?'model_8/conv3d_17/Conv3D/ReadVariableOp?'model_8/dense_48/BiasAdd/ReadVariableOp?&model_8/dense_48/MatMul/ReadVariableOp?'model_8/dense_49/BiasAdd/ReadVariableOp?&model_8/dense_49/MatMul/ReadVariableOp?'model_8/dense_50/BiasAdd/ReadVariableOp?&model_8/dense_50/MatMul/ReadVariableOp?'model_8/dense_51/BiasAdd/ReadVariableOp?&model_8/dense_51/MatMul/ReadVariableOp?'model_8/dense_52/BiasAdd/ReadVariableOp?&model_8/dense_52/MatMul/ReadVariableOp?'model_8/dense_53/BiasAdd/ReadVariableOp?&model_8/dense_53/MatMul/ReadVariableOp?
%model_8/zero_padding3d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
model_8/zero_padding3d_8/PadPadconv.model_8/zero_padding3d_8/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
'model_8/conv3d_16/Conv3D/ReadVariableOpReadVariableOp0model_8_conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
model_8/conv3d_16/Conv3DConv3D%model_8/zero_padding3d_8/Pad:output:0/model_8/conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
(model_8/conv3d_16/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_8/conv3d_16/BiasAddBiasAdd!model_8/conv3d_16/Conv3D:output:00model_8/conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
model_8/conv3d_16/ReluRelu"model_8/conv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
"model_8/max_pooling3d_16/MaxPool3D	MaxPool3D$model_8/conv3d_16/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
'model_8/conv3d_17/Conv3D/ReadVariableOpReadVariableOp0model_8_conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
model_8/conv3d_17/Conv3DConv3D+model_8/max_pooling3d_16/MaxPool3D:output:0/model_8/conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
(model_8/conv3d_17/BiasAdd/ReadVariableOpReadVariableOp1model_8_conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_8/conv3d_17/BiasAddBiasAdd!model_8/conv3d_17/Conv3D:output:00model_8/conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
model_8/conv3d_17/ReluRelu"model_8/conv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
"model_8/max_pooling3d_17/MaxPool3D	MaxPool3D$model_8/conv3d_17/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
h
model_8/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_8/flatten_8/ReshapeReshape+model_8/max_pooling3d_17/MaxPool3D:output:0 model_8/flatten_8/Const:output:0*
T0*'
_output_shapes
:?????????c
!model_8/concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_8/concatenate_8/concatConcatV2cat"model_8/flatten_8/Reshape:output:0*model_8/concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????)?
&model_8/dense_48/MatMul/ReadVariableOpReadVariableOp/model_8_dense_48_matmul_readvariableop_resource*
_output_shapes

:)R*
dtype0?
model_8/dense_48/MatMulMatMul%model_8/concatenate_8/concat:output:0.model_8/dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
'model_8/dense_48/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_48_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
model_8/dense_48/BiasAddBiasAdd!model_8/dense_48/MatMul:product:0/model_8/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
model_8/dense_48/ReluRelu!model_8/dense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
&model_8/dense_49/MatMul/ReadVariableOpReadVariableOp/model_8_dense_49_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
model_8/dense_49/MatMulMatMul#model_8/dense_48/Relu:activations:0.model_8/dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
'model_8/dense_49/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_49_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
model_8/dense_49/BiasAddBiasAdd!model_8/dense_49/MatMul:product:0/model_8/dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
model_8/dense_49/ReluRelu!model_8/dense_49/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
&model_8/dense_50/MatMul/ReadVariableOpReadVariableOp/model_8_dense_50_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
model_8/dense_50/MatMulMatMul#model_8/dense_49/Relu:activations:0.model_8/dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
'model_8/dense_50/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_50_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
model_8/dense_50/BiasAddBiasAdd!model_8/dense_50/MatMul:product:0/model_8/dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
model_8/dense_50/ReluRelu!model_8/dense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
&model_8/dense_51/MatMul/ReadVariableOpReadVariableOp/model_8_dense_51_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
model_8/dense_51/MatMulMatMul#model_8/dense_50/Relu:activations:0.model_8/dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
'model_8/dense_51/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_51_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
model_8/dense_51/BiasAddBiasAdd!model_8/dense_51/MatMul:product:0/model_8/dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
model_8/dense_51/ReluRelu!model_8/dense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
&model_8/dense_52/MatMul/ReadVariableOpReadVariableOp/model_8_dense_52_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
model_8/dense_52/MatMulMatMul#model_8/dense_51/Relu:activations:0.model_8/dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
'model_8/dense_52/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_52_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
model_8/dense_52/BiasAddBiasAdd!model_8/dense_52/MatMul:product:0/model_8/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
model_8/dense_52/ReluRelu!model_8/dense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
&model_8/dense_53/MatMul/ReadVariableOpReadVariableOp/model_8_dense_53_matmul_readvariableop_resource*
_output_shapes

:R*
dtype0?
model_8/dense_53/MatMulMatMul#model_8/dense_52/Relu:activations:0.model_8/dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_8/dense_53/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_8/dense_53/BiasAddBiasAdd!model_8/dense_53/MatMul:product:0/model_8/dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!model_8/dense_53/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^model_8/conv3d_16/BiasAdd/ReadVariableOp(^model_8/conv3d_16/Conv3D/ReadVariableOp)^model_8/conv3d_17/BiasAdd/ReadVariableOp(^model_8/conv3d_17/Conv3D/ReadVariableOp(^model_8/dense_48/BiasAdd/ReadVariableOp'^model_8/dense_48/MatMul/ReadVariableOp(^model_8/dense_49/BiasAdd/ReadVariableOp'^model_8/dense_49/MatMul/ReadVariableOp(^model_8/dense_50/BiasAdd/ReadVariableOp'^model_8/dense_50/MatMul/ReadVariableOp(^model_8/dense_51/BiasAdd/ReadVariableOp'^model_8/dense_51/MatMul/ReadVariableOp(^model_8/dense_52/BiasAdd/ReadVariableOp'^model_8/dense_52/MatMul/ReadVariableOp(^model_8/dense_53/BiasAdd/ReadVariableOp'^model_8/dense_53/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2T
(model_8/conv3d_16/BiasAdd/ReadVariableOp(model_8/conv3d_16/BiasAdd/ReadVariableOp2R
'model_8/conv3d_16/Conv3D/ReadVariableOp'model_8/conv3d_16/Conv3D/ReadVariableOp2T
(model_8/conv3d_17/BiasAdd/ReadVariableOp(model_8/conv3d_17/BiasAdd/ReadVariableOp2R
'model_8/conv3d_17/Conv3D/ReadVariableOp'model_8/conv3d_17/Conv3D/ReadVariableOp2R
'model_8/dense_48/BiasAdd/ReadVariableOp'model_8/dense_48/BiasAdd/ReadVariableOp2P
&model_8/dense_48/MatMul/ReadVariableOp&model_8/dense_48/MatMul/ReadVariableOp2R
'model_8/dense_49/BiasAdd/ReadVariableOp'model_8/dense_49/BiasAdd/ReadVariableOp2P
&model_8/dense_49/MatMul/ReadVariableOp&model_8/dense_49/MatMul/ReadVariableOp2R
'model_8/dense_50/BiasAdd/ReadVariableOp'model_8/dense_50/BiasAdd/ReadVariableOp2P
&model_8/dense_50/MatMul/ReadVariableOp&model_8/dense_50/MatMul/ReadVariableOp2R
'model_8/dense_51/BiasAdd/ReadVariableOp'model_8/dense_51/BiasAdd/ReadVariableOp2P
&model_8/dense_51/MatMul/ReadVariableOp&model_8/dense_51/MatMul/ReadVariableOp2R
'model_8/dense_52/BiasAdd/ReadVariableOp'model_8/dense_52/BiasAdd/ReadVariableOp2P
&model_8/dense_52/MatMul/ReadVariableOp&model_8/dense_52/MatMul/ReadVariableOp2R
'model_8/dense_53/BiasAdd/ReadVariableOp'model_8/dense_53/BiasAdd/ReadVariableOp2P
&model_8/dense_53/MatMul/ReadVariableOp&model_8/dense_53/MatMul/ReadVariableOp:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2179516

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
[
/__inference_concatenate_8_layer_call_fn_2179543
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2178701`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????)"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
??
?#
#__inference__traced_restore_2180057
file_prefix?
!assignvariableop_conv3d_16_kernel:/
!assignvariableop_1_conv3d_16_bias:A
#assignvariableop_2_conv3d_17_kernel:/
!assignvariableop_3_conv3d_17_bias:4
"assignvariableop_4_dense_48_kernel:)R.
 assignvariableop_5_dense_48_bias:R4
"assignvariableop_6_dense_49_kernel:RR.
 assignvariableop_7_dense_49_bias:R4
"assignvariableop_8_dense_50_kernel:RR.
 assignvariableop_9_dense_50_bias:R5
#assignvariableop_10_dense_51_kernel:RR/
!assignvariableop_11_dense_51_bias:R5
#assignvariableop_12_dense_52_kernel:RR/
!assignvariableop_13_dense_52_bias:R5
#assignvariableop_14_dense_53_kernel:R/
!assignvariableop_15_dense_53_bias:'
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
assignvariableop_26_count_2: I
+assignvariableop_27_adam_conv3d_16_kernel_m:7
)assignvariableop_28_adam_conv3d_16_bias_m:I
+assignvariableop_29_adam_conv3d_17_kernel_m:7
)assignvariableop_30_adam_conv3d_17_bias_m:<
*assignvariableop_31_adam_dense_48_kernel_m:)R6
(assignvariableop_32_adam_dense_48_bias_m:R<
*assignvariableop_33_adam_dense_49_kernel_m:RR6
(assignvariableop_34_adam_dense_49_bias_m:R<
*assignvariableop_35_adam_dense_50_kernel_m:RR6
(assignvariableop_36_adam_dense_50_bias_m:R<
*assignvariableop_37_adam_dense_51_kernel_m:RR6
(assignvariableop_38_adam_dense_51_bias_m:R<
*assignvariableop_39_adam_dense_52_kernel_m:RR6
(assignvariableop_40_adam_dense_52_bias_m:R<
*assignvariableop_41_adam_dense_53_kernel_m:R6
(assignvariableop_42_adam_dense_53_bias_m:I
+assignvariableop_43_adam_conv3d_16_kernel_v:7
)assignvariableop_44_adam_conv3d_16_bias_v:I
+assignvariableop_45_adam_conv3d_17_kernel_v:7
)assignvariableop_46_adam_conv3d_17_bias_v:<
*assignvariableop_47_adam_dense_48_kernel_v:)R6
(assignvariableop_48_adam_dense_48_bias_v:R<
*assignvariableop_49_adam_dense_49_kernel_v:RR6
(assignvariableop_50_adam_dense_49_bias_v:R<
*assignvariableop_51_adam_dense_50_kernel_v:RR6
(assignvariableop_52_adam_dense_50_bias_v:R<
*assignvariableop_53_adam_dense_51_kernel_v:RR6
(assignvariableop_54_adam_dense_51_bias_v:R<
*assignvariableop_55_adam_dense_52_kernel_v:RR6
(assignvariableop_56_adam_dense_52_bias_v:R<
*assignvariableop_57_adam_dense_53_kernel_v:R6
(assignvariableop_58_adam_dense_53_bias_v:
identity_60??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*? 
value? B? <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*?
value?B?<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_16_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_17_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_17_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_48_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_48_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_49_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_49_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_50_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_50_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_51_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_51_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_52_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_52_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_53_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_53_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv3d_16_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv3d_16_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv3d_17_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv3d_17_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_48_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_48_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_49_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_49_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_50_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_50_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_51_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_51_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_52_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_52_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_53_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_53_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv3d_16_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv3d_16_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv3d_17_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv3d_17_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_48_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_48_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_49_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_49_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_50_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_50_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_51_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_51_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_52_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_52_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_53_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_53_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: ?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*?
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
?

?
E__inference_dense_49_layer_call_and_return_conditional_losses_2178731

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2178625

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
?
i
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2179496

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
?
v
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2179550
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
:?????????)W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????)"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_dense_52_layer_call_fn_2179639

inputs
unknown:RR
	unknown_0:R
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_2178782o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????R`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
?
*__inference_dense_51_layer_call_fn_2179619

inputs
unknown:RR
	unknown_0:R
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2178765o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????R`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_16_layer_call_fn_2179491

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
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2178625?
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
?:
?
D__inference_model_8_layer_call_and_return_conditional_losses_2179147
conv
cat/
conv3d_16_2179102:
conv3d_16_2179104:/
conv3d_17_2179108:
conv3d_17_2179110:"
dense_48_2179116:)R
dense_48_2179118:R"
dense_49_2179121:RR
dense_49_2179123:R"
dense_50_2179126:RR
dense_50_2179128:R"
dense_51_2179131:RR
dense_51_2179133:R"
dense_52_2179136:RR
dense_52_2179138:R"
dense_53_2179141:R
dense_53_2179143:
identity??!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
 zero_padding3d_8/PartitionedCallPartitionedCallconv*
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
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2178613?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_8/PartitionedCall:output:0conv3d_16_2179102conv3d_16_2179104*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2178661?
 max_pooling3d_16/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2178625?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_16/PartitionedCall:output:0conv3d_17_2179108conv3d_17_2179110*
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
GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2178679?
 max_pooling3d_17/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2178637?
flatten_8/PartitionedCallPartitionedCall)max_pooling3d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2178692?
concatenate_8/PartitionedCallPartitionedCallcat"flatten_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2178701?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0dense_48_2179116dense_48_2179118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2178714?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_2179121dense_49_2179123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2178731?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2179126dense_50_2179128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2178748?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_2179131dense_51_2179133*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2178765?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_2179136dense_52_2179138*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_2178782?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2179141dense_53_2179143*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_2178798x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
*__inference_dense_48_layer_call_fn_2179559

inputs
unknown:)R
	unknown_0:R
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2178714o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????R`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
?
?
)__inference_model_8_layer_call_fn_2179097
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:)R
	unknown_4:R
	unknown_5:RR
	unknown_6:R
	unknown_7:RR
	unknown_8:R
	unknown_9:RR

unknown_10:R

unknown_11:RR

unknown_12:R

unknown_13:R

unknown_14:
identity??StatefulPartitionedCall?
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_8_layer_call_and_return_conditional_losses_2179024o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?Q
?
D__inference_model_8_layer_call_and_return_conditional_losses_2179415
inputs_0
inputs_1F
(conv3d_16_conv3d_readvariableop_resource:7
)conv3d_16_biasadd_readvariableop_resource:F
(conv3d_17_conv3d_readvariableop_resource:7
)conv3d_17_biasadd_readvariableop_resource:9
'dense_48_matmul_readvariableop_resource:)R6
(dense_48_biasadd_readvariableop_resource:R9
'dense_49_matmul_readvariableop_resource:RR6
(dense_49_biasadd_readvariableop_resource:R9
'dense_50_matmul_readvariableop_resource:RR6
(dense_50_biasadd_readvariableop_resource:R9
'dense_51_matmul_readvariableop_resource:RR6
(dense_51_biasadd_readvariableop_resource:R9
'dense_52_matmul_readvariableop_resource:RR6
(dense_52_biasadd_readvariableop_resource:R9
'dense_53_matmul_readvariableop_resource:R6
(dense_53_biasadd_readvariableop_resource:
identity?? conv3d_16/BiasAdd/ReadVariableOp?conv3d_16/Conv3D/ReadVariableOp? conv3d_17/BiasAdd/ReadVariableOp?conv3d_17/Conv3D/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?
zero_padding3d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_8/PadPadinputs_0&zero_padding3d_8/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_16/Conv3DConv3Dzero_padding3d_8/Pad:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_16/ReluReluconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_16/MaxPool3D	MaxPool3Dconv3d_16/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_17/Conv3DConv3D#max_pooling3d_16/MaxPool3D:output:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_17/ReluReluconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_17/MaxPool3D	MaxPool3Dconv3d_17/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_8/ReshapeReshape#max_pooling3d_17/MaxPool3D:output:0flatten_8/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_8/concatConcatV2inputs_1flatten_8/Reshape:output:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????)?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes

:)R*
dtype0?
dense_48/MatMulMatMulconcatenate_8/concat:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_51/MatMulMatMuldense_50/Relu:activations:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_51/ReluReludense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_52/MatMulMatMuldense_51/Relu:activations:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:R*
dtype0?
dense_53/MatMulMatMuldense_52/Relu:activations:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_53/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
i
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2179526

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
?
?
*__inference_dense_50_layer_call_fn_2179599

inputs
unknown:RR
	unknown_0:R
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2178748o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????R`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
?
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2178679

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
?

?
E__inference_dense_50_layer_call_and_return_conditional_losses_2178748

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?Q
?
D__inference_model_8_layer_call_and_return_conditional_losses_2179347
inputs_0
inputs_1F
(conv3d_16_conv3d_readvariableop_resource:7
)conv3d_16_biasadd_readvariableop_resource:F
(conv3d_17_conv3d_readvariableop_resource:7
)conv3d_17_biasadd_readvariableop_resource:9
'dense_48_matmul_readvariableop_resource:)R6
(dense_48_biasadd_readvariableop_resource:R9
'dense_49_matmul_readvariableop_resource:RR6
(dense_49_biasadd_readvariableop_resource:R9
'dense_50_matmul_readvariableop_resource:RR6
(dense_50_biasadd_readvariableop_resource:R9
'dense_51_matmul_readvariableop_resource:RR6
(dense_51_biasadd_readvariableop_resource:R9
'dense_52_matmul_readvariableop_resource:RR6
(dense_52_biasadd_readvariableop_resource:R9
'dense_53_matmul_readvariableop_resource:R6
(dense_53_biasadd_readvariableop_resource:
identity?? conv3d_16/BiasAdd/ReadVariableOp?conv3d_16/Conv3D/ReadVariableOp? conv3d_17/BiasAdd/ReadVariableOp?conv3d_17/Conv3D/ReadVariableOp?dense_48/BiasAdd/ReadVariableOp?dense_48/MatMul/ReadVariableOp?dense_49/BiasAdd/ReadVariableOp?dense_49/MatMul/ReadVariableOp?dense_50/BiasAdd/ReadVariableOp?dense_50/MatMul/ReadVariableOp?dense_51/BiasAdd/ReadVariableOp?dense_51/MatMul/ReadVariableOp?dense_52/BiasAdd/ReadVariableOp?dense_52/MatMul/ReadVariableOp?dense_53/BiasAdd/ReadVariableOp?dense_53/MatMul/ReadVariableOp?
zero_padding3d_8/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_8/PadPadinputs_0&zero_padding3d_8/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_16/Conv3D/ReadVariableOpReadVariableOp(conv3d_16_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_16/Conv3DConv3Dzero_padding3d_8/Pad:output:0'conv3d_16/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_16/BiasAdd/ReadVariableOpReadVariableOp)conv3d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_16/BiasAddBiasAddconv3d_16/Conv3D:output:0(conv3d_16/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_16/ReluReluconv3d_16/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_16/MaxPool3D	MaxPool3Dconv3d_16/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_17/Conv3D/ReadVariableOpReadVariableOp(conv3d_17_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_17/Conv3DConv3D#max_pooling3d_16/MaxPool3D:output:0'conv3d_17/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_17/BiasAdd/ReadVariableOpReadVariableOp)conv3d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_17/BiasAddBiasAddconv3d_17/Conv3D:output:0(conv3d_17/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_17/ReluReluconv3d_17/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_17/MaxPool3D	MaxPool3Dconv3d_17/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_8/ReshapeReshape#max_pooling3d_17/MaxPool3D:output:0flatten_8/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_8/concatConcatV2inputs_1flatten_8/Reshape:output:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????)?
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes

:)R*
dtype0?
dense_48/MatMulMatMulconcatenate_8/concat:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_48/ReluReludense_48/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_49/MatMul/ReadVariableOpReadVariableOp'dense_49_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_49/MatMulMatMuldense_48/Relu:activations:0&dense_49/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_49/BiasAdd/ReadVariableOpReadVariableOp(dense_49_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_49/BiasAddBiasAdddense_49/MatMul:product:0'dense_49/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_49/ReluReludense_49/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_50/MatMul/ReadVariableOpReadVariableOp'dense_50_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_50/MatMulMatMuldense_49/Relu:activations:0&dense_50/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_50/BiasAdd/ReadVariableOpReadVariableOp(dense_50_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_50/BiasAddBiasAdddense_50/MatMul:product:0'dense_50/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_50/ReluReludense_50/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_51/MatMul/ReadVariableOpReadVariableOp'dense_51_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_51/MatMulMatMuldense_50/Relu:activations:0&dense_51/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_51/BiasAdd/ReadVariableOpReadVariableOp(dense_51_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_51/BiasAddBiasAdddense_51/MatMul:product:0'dense_51/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_51/ReluReludense_51/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource*
_output_shapes

:RR*
dtype0?
dense_52/MatMulMatMuldense_51/Relu:activations:0&dense_52/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????R?
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes
:R*
dtype0?
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rb
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*'
_output_shapes
:?????????R?
dense_53/MatMul/ReadVariableOpReadVariableOp'dense_53_matmul_readvariableop_resource*
_output_shapes

:R*
dtype0?
dense_53/MatMulMatMuldense_52/Relu:activations:0&dense_53/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_53/BiasAdd/ReadVariableOpReadVariableOp(dense_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_53/BiasAddBiasAdddense_53/MatMul:product:0'dense_53/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_53/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv3d_16/BiasAdd/ReadVariableOp ^conv3d_16/Conv3D/ReadVariableOp!^conv3d_17/BiasAdd/ReadVariableOp ^conv3d_17/Conv3D/ReadVariableOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp ^dense_49/BiasAdd/ReadVariableOp^dense_49/MatMul/ReadVariableOp ^dense_50/BiasAdd/ReadVariableOp^dense_50/MatMul/ReadVariableOp ^dense_51/BiasAdd/ReadVariableOp^dense_51/MatMul/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp ^dense_53/BiasAdd/ReadVariableOp^dense_53/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2D
 conv3d_16/BiasAdd/ReadVariableOp conv3d_16/BiasAdd/ReadVariableOp2B
conv3d_16/Conv3D/ReadVariableOpconv3d_16/Conv3D/ReadVariableOp2D
 conv3d_17/BiasAdd/ReadVariableOp conv3d_17/BiasAdd/ReadVariableOp2B
conv3d_17/Conv3D/ReadVariableOpconv3d_17/Conv3D/ReadVariableOp2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2B
dense_49/BiasAdd/ReadVariableOpdense_49/BiasAdd/ReadVariableOp2@
dense_49/MatMul/ReadVariableOpdense_49/MatMul/ReadVariableOp2B
dense_50/BiasAdd/ReadVariableOpdense_50/BiasAdd/ReadVariableOp2@
dense_50/MatMul/ReadVariableOpdense_50/MatMul/ReadVariableOp2B
dense_51/BiasAdd/ReadVariableOpdense_51/BiasAdd/ReadVariableOp2@
dense_51/MatMul/ReadVariableOpdense_51/MatMul/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp2B
dense_53/BiasAdd/ReadVariableOpdense_53/BiasAdd/ReadVariableOp2@
dense_53/MatMul/ReadVariableOpdense_53/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
i
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2179466

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
?
?
)__inference_model_8_layer_call_fn_2179241
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:)R
	unknown_4:R
	unknown_5:RR
	unknown_6:R
	unknown_7:RR
	unknown_8:R
	unknown_9:RR

unknown_10:R

unknown_11:RR

unknown_12:R

unknown_13:R

unknown_14:
identity??StatefulPartitionedCall?
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_8_layer_call_and_return_conditional_losses_2178805o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_dense_49_layer_call_fn_2179579

inputs
unknown:RR
	unknown_0:R
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2178731o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????R`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?	
?
E__inference_dense_53_layer_call_and_return_conditional_losses_2178798

inputs0
matmul_readvariableop_resource:R-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:R*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?:
?
D__inference_model_8_layer_call_and_return_conditional_losses_2179197
conv
cat/
conv3d_16_2179152:
conv3d_16_2179154:/
conv3d_17_2179158:
conv3d_17_2179160:"
dense_48_2179166:)R
dense_48_2179168:R"
dense_49_2179171:RR
dense_49_2179173:R"
dense_50_2179176:RR
dense_50_2179178:R"
dense_51_2179181:RR
dense_51_2179183:R"
dense_52_2179186:RR
dense_52_2179188:R"
dense_53_2179191:R
dense_53_2179193:
identity??!conv3d_16/StatefulPartitionedCall?!conv3d_17/StatefulPartitionedCall? dense_48/StatefulPartitionedCall? dense_49/StatefulPartitionedCall? dense_50/StatefulPartitionedCall? dense_51/StatefulPartitionedCall? dense_52/StatefulPartitionedCall? dense_53/StatefulPartitionedCall?
 zero_padding3d_8/PartitionedCallPartitionedCallconv*
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
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2178613?
!conv3d_16/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_8/PartitionedCall:output:0conv3d_16_2179152conv3d_16_2179154*
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2178661?
 max_pooling3d_16/PartitionedCallPartitionedCall*conv3d_16/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2178625?
!conv3d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_16/PartitionedCall:output:0conv3d_17_2179158conv3d_17_2179160*
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
GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2178679?
 max_pooling3d_17/PartitionedCallPartitionedCall*conv3d_17/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *V
fQRO
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2178637?
flatten_8/PartitionedCallPartitionedCall)max_pooling3d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_8_layer_call_and_return_conditional_losses_2178692?
concatenate_8/PartitionedCallPartitionedCallcat"flatten_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2178701?
 dense_48/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0dense_48_2179166dense_48_2179168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2178714?
 dense_49/StatefulPartitionedCallStatefulPartitionedCall)dense_48/StatefulPartitionedCall:output:0dense_49_2179171dense_49_2179173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_49_layer_call_and_return_conditional_losses_2178731?
 dense_50/StatefulPartitionedCallStatefulPartitionedCall)dense_49/StatefulPartitionedCall:output:0dense_50_2179176dense_50_2179178*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_50_layer_call_and_return_conditional_losses_2178748?
 dense_51/StatefulPartitionedCallStatefulPartitionedCall)dense_50/StatefulPartitionedCall:output:0dense_51_2179181dense_51_2179183*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_51_layer_call_and_return_conditional_losses_2178765?
 dense_52/StatefulPartitionedCallStatefulPartitionedCall)dense_51/StatefulPartitionedCall:output:0dense_52_2179186dense_52_2179188*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????R*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_2178782?
 dense_53/StatefulPartitionedCallStatefulPartitionedCall)dense_52/StatefulPartitionedCall:output:0dense_53_2179191dense_53_2179193*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_2178798x
IdentityIdentity)dense_53/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_16/StatefulPartitionedCall"^conv3d_17/StatefulPartitionedCall!^dense_48/StatefulPartitionedCall!^dense_49/StatefulPartitionedCall!^dense_50/StatefulPartitionedCall!^dense_51/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall!^dense_53/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_16/StatefulPartitionedCall!conv3d_16/StatefulPartitionedCall2F
!conv3d_17/StatefulPartitionedCall!conv3d_17/StatefulPartitionedCall2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 dense_49/StatefulPartitionedCall dense_49/StatefulPartitionedCall2D
 dense_50/StatefulPartitionedCall dense_50/StatefulPartitionedCall2D
 dense_51/StatefulPartitionedCall dense_51/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall2D
 dense_53/StatefulPartitionedCall dense_53/StatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?

?
E__inference_dense_50_layer_call_and_return_conditional_losses_2179610

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?s
?
 __inference__traced_save_2179870
file_prefix/
+savev2_conv3d_16_kernel_read_readvariableop-
)savev2_conv3d_16_bias_read_readvariableop/
+savev2_conv3d_17_kernel_read_readvariableop-
)savev2_conv3d_17_bias_read_readvariableop.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop.
*savev2_dense_49_kernel_read_readvariableop,
(savev2_dense_49_bias_read_readvariableop.
*savev2_dense_50_kernel_read_readvariableop,
(savev2_dense_50_bias_read_readvariableop.
*savev2_dense_51_kernel_read_readvariableop,
(savev2_dense_51_bias_read_readvariableop.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop.
*savev2_dense_53_kernel_read_readvariableop,
(savev2_dense_53_bias_read_readvariableop(
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
"savev2_count_2_read_readvariableop6
2savev2_adam_conv3d_16_kernel_m_read_readvariableop4
0savev2_adam_conv3d_16_bias_m_read_readvariableop6
2savev2_adam_conv3d_17_kernel_m_read_readvariableop4
0savev2_adam_conv3d_17_bias_m_read_readvariableop5
1savev2_adam_dense_48_kernel_m_read_readvariableop3
/savev2_adam_dense_48_bias_m_read_readvariableop5
1savev2_adam_dense_49_kernel_m_read_readvariableop3
/savev2_adam_dense_49_bias_m_read_readvariableop5
1savev2_adam_dense_50_kernel_m_read_readvariableop3
/savev2_adam_dense_50_bias_m_read_readvariableop5
1savev2_adam_dense_51_kernel_m_read_readvariableop3
/savev2_adam_dense_51_bias_m_read_readvariableop5
1savev2_adam_dense_52_kernel_m_read_readvariableop3
/savev2_adam_dense_52_bias_m_read_readvariableop5
1savev2_adam_dense_53_kernel_m_read_readvariableop3
/savev2_adam_dense_53_bias_m_read_readvariableop6
2savev2_adam_conv3d_16_kernel_v_read_readvariableop4
0savev2_adam_conv3d_16_bias_v_read_readvariableop6
2savev2_adam_conv3d_17_kernel_v_read_readvariableop4
0savev2_adam_conv3d_17_bias_v_read_readvariableop5
1savev2_adam_dense_48_kernel_v_read_readvariableop3
/savev2_adam_dense_48_bias_v_read_readvariableop5
1savev2_adam_dense_49_kernel_v_read_readvariableop3
/savev2_adam_dense_49_bias_v_read_readvariableop5
1savev2_adam_dense_50_kernel_v_read_readvariableop3
/savev2_adam_dense_50_bias_v_read_readvariableop5
1savev2_adam_dense_51_kernel_v_read_readvariableop3
/savev2_adam_dense_51_bias_v_read_readvariableop5
1savev2_adam_dense_52_kernel_v_read_readvariableop3
/savev2_adam_dense_52_bias_v_read_readvariableop5
1savev2_adam_dense_53_kernel_v_read_readvariableop3
/savev2_adam_dense_53_bias_v_read_readvariableop
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
: ?!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*? 
value? B? <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*?
value?B?<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_16_kernel_read_readvariableop)savev2_conv3d_16_bias_read_readvariableop+savev2_conv3d_17_kernel_read_readvariableop)savev2_conv3d_17_bias_read_readvariableop*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop*savev2_dense_49_kernel_read_readvariableop(savev2_dense_49_bias_read_readvariableop*savev2_dense_50_kernel_read_readvariableop(savev2_dense_50_bias_read_readvariableop*savev2_dense_51_kernel_read_readvariableop(savev2_dense_51_bias_read_readvariableop*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop*savev2_dense_53_kernel_read_readvariableop(savev2_dense_53_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop2savev2_adam_conv3d_16_kernel_m_read_readvariableop0savev2_adam_conv3d_16_bias_m_read_readvariableop2savev2_adam_conv3d_17_kernel_m_read_readvariableop0savev2_adam_conv3d_17_bias_m_read_readvariableop1savev2_adam_dense_48_kernel_m_read_readvariableop/savev2_adam_dense_48_bias_m_read_readvariableop1savev2_adam_dense_49_kernel_m_read_readvariableop/savev2_adam_dense_49_bias_m_read_readvariableop1savev2_adam_dense_50_kernel_m_read_readvariableop/savev2_adam_dense_50_bias_m_read_readvariableop1savev2_adam_dense_51_kernel_m_read_readvariableop/savev2_adam_dense_51_bias_m_read_readvariableop1savev2_adam_dense_52_kernel_m_read_readvariableop/savev2_adam_dense_52_bias_m_read_readvariableop1savev2_adam_dense_53_kernel_m_read_readvariableop/savev2_adam_dense_53_bias_m_read_readvariableop2savev2_adam_conv3d_16_kernel_v_read_readvariableop0savev2_adam_conv3d_16_bias_v_read_readvariableop2savev2_adam_conv3d_17_kernel_v_read_readvariableop0savev2_adam_conv3d_17_bias_v_read_readvariableop1savev2_adam_dense_48_kernel_v_read_readvariableop/savev2_adam_dense_48_bias_v_read_readvariableop1savev2_adam_dense_49_kernel_v_read_readvariableop/savev2_adam_dense_49_bias_v_read_readvariableop1savev2_adam_dense_50_kernel_v_read_readvariableop/savev2_adam_dense_50_bias_v_read_readvariableop1savev2_adam_dense_51_kernel_v_read_readvariableop/savev2_adam_dense_51_bias_v_read_readvariableop1savev2_adam_dense_52_kernel_v_read_readvariableop/savev2_adam_dense_52_bias_v_read_readvariableop1savev2_adam_dense_53_kernel_v_read_readvariableop/savev2_adam_dense_53_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::)R:R:RR:R:RR:R:RR:R:RR:R:R:: : : : : : : : : : : :::::)R:R:RR:R:RR:R:RR:R:RR:R:R::::::)R:R:RR:R:RR:R:RR:R:RR:R:R:: 2(
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

:)R: 

_output_shapes
:R:$ 

_output_shapes

:RR: 

_output_shapes
:R:$	 

_output_shapes

:RR: 


_output_shapes
:R:$ 

_output_shapes

:RR: 

_output_shapes
:R:$ 

_output_shapes

:RR: 

_output_shapes
:R:$ 

_output_shapes

:R: 
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

:)R: !

_output_shapes
:R:$" 

_output_shapes

:RR: #

_output_shapes
:R:$$ 

_output_shapes

:RR: %

_output_shapes
:R:$& 

_output_shapes

:RR: '

_output_shapes
:R:$( 

_output_shapes

:RR: )

_output_shapes
:R:$* 

_output_shapes

:R: +
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

:)R: 1

_output_shapes
:R:$2 

_output_shapes

:RR: 3

_output_shapes
:R:$4 

_output_shapes

:RR: 5

_output_shapes
:R:$6 

_output_shapes

:RR: 7

_output_shapes
:R:$8 

_output_shapes

:RR: 9

_output_shapes
:R:$: 

_output_shapes

:R: ;

_output_shapes
::<

_output_shapes
: 
?
?
+__inference_conv3d_16_layer_call_fn_2179475

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
GPU2*0J 8? *O
fJRH
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2178661{
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
?

?
E__inference_dense_49_layer_call_and_return_conditional_losses_2179590

inputs0
matmul_readvariableop_resource:RR-
biasadd_readvariableop_resource:R
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:RR*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Rr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:R*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????RP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Ra
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Rw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
?
*__inference_dense_53_layer_call_fn_2179659

inputs
unknown:R
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_53_layer_call_and_return_conditional_losses_2178798o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
b
F__inference_flatten_8_layer_call_and_return_conditional_losses_2179537

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs
?	
?
E__inference_dense_53_layer_call_and_return_conditional_losses_2179669

inputs0
matmul_readvariableop_resource:R-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:R*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????R: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????R
 
_user_specified_nameinputs
?
?
+__inference_conv3d_17_layer_call_fn_2179505

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
GPU2*0J 8? *O
fJRH
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2178679{
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
3
cat,
serving_default_cat:0?????????
A
conv9
serving_default_conv:0?????????<
dense_530
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Gkernel
Hbias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
?

_kernel
`bias
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
?

gkernel
hbias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
?

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
?
witer

xbeta_1

ybeta_2
	zdecay
{learning_ratem? m?-m?.m?Gm?Hm?Om?Pm?Wm?Xm?_m?`m?gm?hm?om?pm?v? v?-v?.v?Gv?Hv?Ov?Pv?Wv?Xv?_v?`v?gv?hv?ov?pv?"
	optimizer
?
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
?
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
?
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_model_8_layer_call_fn_2178840
)__inference_model_8_layer_call_fn_2179241
)__inference_model_8_layer_call_fn_2179279
)__inference_model_8_layer_call_fn_2179097?
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
D__inference_model_8_layer_call_and_return_conditional_losses_2179347
D__inference_model_8_layer_call_and_return_conditional_losses_2179415
D__inference_model_8_layer_call_and_return_conditional_losses_2179147
D__inference_model_8_layer_call_and_return_conditional_losses_2179197?
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
"__inference__wrapped_model_2178603convcat"?
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
-
?serving_default"
signature_map
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
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_zero_padding3d_8_layer_call_fn_2179460?
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
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2179466?
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
.:,2conv3d_16/kernel
:2conv3d_16/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv3d_16_layer_call_fn_2179475?
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
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2179486?
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
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling3d_16_layer_call_fn_2179491?
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
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2179496?
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
.:,2conv3d_17/kernel
:2conv3d_17/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_conv3d_17_layer_call_fn_2179505?
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
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2179516?
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
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_max_pooling3d_17_layer_call_fn_2179521?
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
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2179526?
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
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_flatten_8_layer_call_fn_2179531?
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
F__inference_flatten_8_layer_call_and_return_conditional_losses_2179537?
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
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_concatenate_8_layer_call_fn_2179543?
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
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2179550?
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
!:)R2dense_48/kernel
:R2dense_48/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_48_layer_call_fn_2179559?
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
E__inference_dense_48_layer_call_and_return_conditional_losses_2179570?
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
!:RR2dense_49/kernel
:R2dense_49/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_49_layer_call_fn_2179579?
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
E__inference_dense_49_layer_call_and_return_conditional_losses_2179590?
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
!:RR2dense_50/kernel
:R2dense_50/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_50_layer_call_fn_2179599?
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
E__inference_dense_50_layer_call_and_return_conditional_losses_2179610?
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
!:RR2dense_51/kernel
:R2dense_51/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_51_layer_call_fn_2179619?
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
E__inference_dense_51_layer_call_and_return_conditional_losses_2179630?
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
!:RR2dense_52/kernel
:R2dense_52/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_52_layer_call_fn_2179639?
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
E__inference_dense_52_layer_call_and_return_conditional_losses_2179650?
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
!:R2dense_53/kernel
:2dense_53/bias
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_dense_53_layer_call_fn_2179659?
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
E__inference_dense_53_layer_call_and_return_conditional_losses_2179669?
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
?
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
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_signature_wrapper_2179455catconv"?
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
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
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
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
3:12Adam/conv3d_16/kernel/m
!:2Adam/conv3d_16/bias/m
3:12Adam/conv3d_17/kernel/m
!:2Adam/conv3d_17/bias/m
&:$)R2Adam/dense_48/kernel/m
 :R2Adam/dense_48/bias/m
&:$RR2Adam/dense_49/kernel/m
 :R2Adam/dense_49/bias/m
&:$RR2Adam/dense_50/kernel/m
 :R2Adam/dense_50/bias/m
&:$RR2Adam/dense_51/kernel/m
 :R2Adam/dense_51/bias/m
&:$RR2Adam/dense_52/kernel/m
 :R2Adam/dense_52/bias/m
&:$R2Adam/dense_53/kernel/m
 :2Adam/dense_53/bias/m
3:12Adam/conv3d_16/kernel/v
!:2Adam/conv3d_16/bias/v
3:12Adam/conv3d_17/kernel/v
!:2Adam/conv3d_17/bias/v
&:$)R2Adam/dense_48/kernel/v
 :R2Adam/dense_48/bias/v
&:$RR2Adam/dense_49/kernel/v
 :R2Adam/dense_49/bias/v
&:$RR2Adam/dense_50/kernel/v
 :R2Adam/dense_50/bias/v
&:$RR2Adam/dense_51/kernel/v
 :R2Adam/dense_51/bias/v
&:$RR2Adam/dense_52/kernel/v
 :R2Adam/dense_52/bias/v
&:$R2Adam/dense_53/kernel/v
 :2Adam/dense_53/bias/v?
"__inference__wrapped_model_2178603? -.GHOPWX_`ghop]?Z
S?P
N?K
*?'
conv?????????
?
cat?????????
? "3?0
.
dense_53"?
dense_53??????????
J__inference_concatenate_8_layer_call_and_return_conditional_losses_2179550?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????)
? ?
/__inference_concatenate_8_layer_call_fn_2179543vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "??????????)?
F__inference_conv3d_16_layer_call_and_return_conditional_losses_2179486t ;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_16_layer_call_fn_2179475g ;?8
1?.
,?)
inputs?????????
? "$?!??????????
F__inference_conv3d_17_layer_call_and_return_conditional_losses_2179516t-.;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_17_layer_call_fn_2179505g-.;?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_dense_48_layer_call_and_return_conditional_losses_2179570\GH/?,
%?"
 ?
inputs?????????)
? "%?"
?
0?????????R
? }
*__inference_dense_48_layer_call_fn_2179559OGH/?,
%?"
 ?
inputs?????????)
? "??????????R?
E__inference_dense_49_layer_call_and_return_conditional_losses_2179590\OP/?,
%?"
 ?
inputs?????????R
? "%?"
?
0?????????R
? }
*__inference_dense_49_layer_call_fn_2179579OOP/?,
%?"
 ?
inputs?????????R
? "??????????R?
E__inference_dense_50_layer_call_and_return_conditional_losses_2179610\WX/?,
%?"
 ?
inputs?????????R
? "%?"
?
0?????????R
? }
*__inference_dense_50_layer_call_fn_2179599OWX/?,
%?"
 ?
inputs?????????R
? "??????????R?
E__inference_dense_51_layer_call_and_return_conditional_losses_2179630\_`/?,
%?"
 ?
inputs?????????R
? "%?"
?
0?????????R
? }
*__inference_dense_51_layer_call_fn_2179619O_`/?,
%?"
 ?
inputs?????????R
? "??????????R?
E__inference_dense_52_layer_call_and_return_conditional_losses_2179650\gh/?,
%?"
 ?
inputs?????????R
? "%?"
?
0?????????R
? }
*__inference_dense_52_layer_call_fn_2179639Ogh/?,
%?"
 ?
inputs?????????R
? "??????????R?
E__inference_dense_53_layer_call_and_return_conditional_losses_2179669\op/?,
%?"
 ?
inputs?????????R
? "%?"
?
0?????????
? }
*__inference_dense_53_layer_call_fn_2179659Oop/?,
%?"
 ?
inputs?????????R
? "???????????
F__inference_flatten_8_layer_call_and_return_conditional_losses_2179537d;?8
1?.
,?)
inputs?????????
? "%?"
?
0?????????
? ?
+__inference_flatten_8_layer_call_fn_2179531W;?8
1?.
,?)
inputs?????????
? "???????????
M__inference_max_pooling3d_16_layer_call_and_return_conditional_losses_2179496?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_16_layer_call_fn_2179491?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_17_layer_call_and_return_conditional_losses_2179526?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_17_layer_call_fn_2179521?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
D__inference_model_8_layer_call_and_return_conditional_losses_2179147? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_8_layer_call_and_return_conditional_losses_2179197? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_model_8_layer_call_and_return_conditional_losses_2179347? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_8_layer_call_and_return_conditional_losses_2179415? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_model_8_layer_call_fn_2178840? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p 

 
? "???????????
)__inference_model_8_layer_call_fn_2179097? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p

 
? "???????????
)__inference_model_8_layer_call_fn_2179241? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
)__inference_model_8_layer_call_fn_2179279? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
%__inference_signature_wrapper_2179455? -.GHOPWX_`ghopg?d
? 
]?Z
$
cat?
cat?????????
2
conv*?'
conv?????????"3?0
.
dense_53"?
dense_53??????????
M__inference_zero_padding3d_8_layer_call_and_return_conditional_losses_2179466?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_zero_padding3d_8_layer_call_fn_2179460?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA?????????????????????????????????????????????