??
??
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
conv3d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_18/kernel
?
$conv3d_18/kernel/Read/ReadVariableOpReadVariableOpconv3d_18/kernel**
_output_shapes
:*
dtype0
t
conv3d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_18/bias
m
"conv3d_18/bias/Read/ReadVariableOpReadVariableOpconv3d_18/bias*
_output_shapes
:*
dtype0
?
conv3d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_19/kernel
?
$conv3d_19/kernel/Read/ReadVariableOpReadVariableOpconv3d_19/kernel**
_output_shapes
:*
dtype0
t
conv3d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_19/bias
m
"conv3d_19/bias/Read/ReadVariableOpReadVariableOpconv3d_19/bias*
_output_shapes
:*
dtype0
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,* 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:,*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:,*
dtype0
z
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

:,,*
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes
:,*
dtype0
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:,,*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:,*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:,,*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:,*
dtype0
z
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:,,*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes
:,*
dtype0
z
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,* 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

:,*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
:*
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
?
Adam/conv3d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_18/kernel/m
?
+Adam/conv3d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_18/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_18/bias/m
{
)Adam/conv3d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_18/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_19/kernel/m
?
+Adam/conv3d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_19/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_19/bias/m
{
)Adam/conv3d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_19/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_54/kernel/m
?
*Adam/dense_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/m*
_output_shapes

:,*
dtype0
?
Adam/dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_54/bias/m
y
(Adam/dense_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/m*
_output_shapes
:,*
dtype0
?
Adam/dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_55/kernel/m
?
*Adam/dense_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/m*
_output_shapes

:,,*
dtype0
?
Adam/dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_55/bias/m
y
(Adam/dense_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/m*
_output_shapes
:,*
dtype0
?
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_56/kernel/m
?
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes

:,,*
dtype0
?
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:,*
dtype0
?
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_57/kernel/m
?
*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes

:,,*
dtype0
?
Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_57/bias/m
y
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes
:,*
dtype0
?
Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_58/kernel/m
?
*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m*
_output_shapes

:,,*
dtype0
?
Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_58/bias/m
y
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes
:,*
dtype0
?
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_59/kernel/m
?
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes

:,*
dtype0
?
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_18/kernel/v
?
+Adam/conv3d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_18/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_18/bias/v
{
)Adam/conv3d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_18/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_19/kernel/v
?
+Adam/conv3d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_19/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_19/bias/v
{
)Adam/conv3d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_19/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_54/kernel/v
?
*Adam/dense_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/kernel/v*
_output_shapes

:,*
dtype0
?
Adam/dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_54/bias/v
y
(Adam/dense_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_54/bias/v*
_output_shapes
:,*
dtype0
?
Adam/dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_55/kernel/v
?
*Adam/dense_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/kernel/v*
_output_shapes

:,,*
dtype0
?
Adam/dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_55/bias/v
y
(Adam/dense_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_55/bias/v*
_output_shapes
:,*
dtype0
?
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_56/kernel/v
?
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes

:,,*
dtype0
?
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:,*
dtype0
?
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_57/kernel/v
?
*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes

:,,*
dtype0
?
Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_57/bias/v
y
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes
:,*
dtype0
?
Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,,*'
shared_nameAdam/dense_58/kernel/v
?
*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v*
_output_shapes

:,,*
dtype0
?
Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*%
shared_nameAdam/dense_58/bias/v
y
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes
:,*
dtype0
?
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:,*'
shared_nameAdam/dense_59/kernel/v
?
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes

:,*
dtype0
?
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?u
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?u
value?uB?u B?u
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
VARIABLE_VALUEconv3d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_54/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_54/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_55/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_55/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_56/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_56/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_57/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_57/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_58/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_58/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_59/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_59/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
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

?0
?1*
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
?}
VARIABLE_VALUEAdam/conv3d_18/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_18/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_19/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_19/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_54/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_54/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_55/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_55/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_58/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_58/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_18/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_18/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_19/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_19/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_54/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_54/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_55/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_55/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_58/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_58/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
v
serving_default_catPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_convPlaceholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_catserving_default_convconv3d_18/kernelconv3d_18/biasconv3d_19/kernelconv3d_19/biasdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3872549
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_18/kernel/Read/ReadVariableOp"conv3d_18/bias/Read/ReadVariableOp$conv3d_19/kernel/Read/ReadVariableOp"conv3d_19/bias/Read/ReadVariableOp#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv3d_18/kernel/m/Read/ReadVariableOp)Adam/conv3d_18/bias/m/Read/ReadVariableOp+Adam/conv3d_19/kernel/m/Read/ReadVariableOp)Adam/conv3d_19/bias/m/Read/ReadVariableOp*Adam/dense_54/kernel/m/Read/ReadVariableOp(Adam/dense_54/bias/m/Read/ReadVariableOp*Adam/dense_55/kernel/m/Read/ReadVariableOp(Adam/dense_55/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp+Adam/conv3d_18/kernel/v/Read/ReadVariableOp)Adam/conv3d_18/bias/v/Read/ReadVariableOp+Adam/conv3d_19/kernel/v/Read/ReadVariableOp)Adam/conv3d_19/bias/v/Read/ReadVariableOp*Adam/dense_54/kernel/v/Read/ReadVariableOp(Adam/dense_54/bias/v/Read/ReadVariableOp*Adam/dense_55/kernel/v/Read/ReadVariableOp(Adam/dense_55/bias/v/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
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
 __inference__traced_save_3872959
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_18/kernelconv3d_18/biasconv3d_19/kernelconv3d_19/biasdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv3d_18/kernel/mAdam/conv3d_18/bias/mAdam/conv3d_19/kernel/mAdam/conv3d_19/bias/mAdam/dense_54/kernel/mAdam/dense_54/bias/mAdam/dense_55/kernel/mAdam/dense_55/bias/mAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/dense_57/kernel/mAdam/dense_57/bias/mAdam/dense_58/kernel/mAdam/dense_58/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/mAdam/conv3d_18/kernel/vAdam/conv3d_18/bias/vAdam/conv3d_19/kernel/vAdam/conv3d_19/bias/vAdam/dense_54/kernel/vAdam/dense_54/bias/vAdam/dense_55/kernel/vAdam/dense_55/bias/vAdam/dense_56/kernel/vAdam/dense_56/bias/vAdam/dense_57/kernel/vAdam/dense_57/bias/vAdam/dense_58/kernel/vAdam/dense_58/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/v*E
Tin>
<2:*
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
#__inference__traced_restore_3873140??	
?
?
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3871752

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

?
E__inference_dense_56_layer_call_and_return_conditional_losses_3871839

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?]
?
"__inference__wrapped_model_3871694
conv
catN
0model_9_conv3d_18_conv3d_readvariableop_resource:?
1model_9_conv3d_18_biasadd_readvariableop_resource:N
0model_9_conv3d_19_conv3d_readvariableop_resource:?
1model_9_conv3d_19_biasadd_readvariableop_resource:A
/model_9_dense_54_matmul_readvariableop_resource:,>
0model_9_dense_54_biasadd_readvariableop_resource:,A
/model_9_dense_55_matmul_readvariableop_resource:,,>
0model_9_dense_55_biasadd_readvariableop_resource:,A
/model_9_dense_56_matmul_readvariableop_resource:,,>
0model_9_dense_56_biasadd_readvariableop_resource:,A
/model_9_dense_57_matmul_readvariableop_resource:,,>
0model_9_dense_57_biasadd_readvariableop_resource:,A
/model_9_dense_58_matmul_readvariableop_resource:,,>
0model_9_dense_58_biasadd_readvariableop_resource:,A
/model_9_dense_59_matmul_readvariableop_resource:,>
0model_9_dense_59_biasadd_readvariableop_resource:
identity??(model_9/conv3d_18/BiasAdd/ReadVariableOp?'model_9/conv3d_18/Conv3D/ReadVariableOp?(model_9/conv3d_19/BiasAdd/ReadVariableOp?'model_9/conv3d_19/Conv3D/ReadVariableOp?'model_9/dense_54/BiasAdd/ReadVariableOp?&model_9/dense_54/MatMul/ReadVariableOp?'model_9/dense_55/BiasAdd/ReadVariableOp?&model_9/dense_55/MatMul/ReadVariableOp?'model_9/dense_56/BiasAdd/ReadVariableOp?&model_9/dense_56/MatMul/ReadVariableOp?'model_9/dense_57/BiasAdd/ReadVariableOp?&model_9/dense_57/MatMul/ReadVariableOp?'model_9/dense_58/BiasAdd/ReadVariableOp?&model_9/dense_58/MatMul/ReadVariableOp?'model_9/dense_59/BiasAdd/ReadVariableOp?&model_9/dense_59/MatMul/ReadVariableOp?
%model_9/zero_padding3d_9/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
model_9/zero_padding3d_9/PadPadconv.model_9/zero_padding3d_9/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
'model_9/conv3d_18/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
model_9/conv3d_18/Conv3DConv3D%model_9/zero_padding3d_9/Pad:output:0/model_9/conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
(model_9/conv3d_18/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_9/conv3d_18/BiasAddBiasAdd!model_9/conv3d_18/Conv3D:output:00model_9/conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
model_9/conv3d_18/ReluRelu"model_9/conv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
"model_9/max_pooling3d_18/MaxPool3D	MaxPool3D$model_9/conv3d_18/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
'model_9/conv3d_19/Conv3D/ReadVariableOpReadVariableOp0model_9_conv3d_19_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
model_9/conv3d_19/Conv3DConv3D+model_9/max_pooling3d_18/MaxPool3D:output:0/model_9/conv3d_19/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
(model_9/conv3d_19/BiasAdd/ReadVariableOpReadVariableOp1model_9_conv3d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_9/conv3d_19/BiasAddBiasAdd!model_9/conv3d_19/Conv3D:output:00model_9/conv3d_19/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
model_9/conv3d_19/ReluRelu"model_9/conv3d_19/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
"model_9/max_pooling3d_19/MaxPool3D	MaxPool3D$model_9/conv3d_19/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
h
model_9/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_9/flatten_9/ReshapeReshape+model_9/max_pooling3d_19/MaxPool3D:output:0 model_9/flatten_9/Const:output:0*
T0*'
_output_shapes
:?????????c
!model_9/concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_9/concatenate_9/concatConcatV2cat"model_9/flatten_9/Reshape:output:0*model_9/concatenate_9/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
&model_9/dense_54/MatMul/ReadVariableOpReadVariableOp/model_9_dense_54_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0?
model_9/dense_54/MatMulMatMul%model_9/concatenate_9/concat:output:0.model_9/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
'model_9/dense_54/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_54_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
model_9/dense_54/BiasAddBiasAdd!model_9/dense_54/MatMul:product:0/model_9/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
model_9/dense_54/ReluRelu!model_9/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
&model_9/dense_55/MatMul/ReadVariableOpReadVariableOp/model_9_dense_55_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
model_9/dense_55/MatMulMatMul#model_9/dense_54/Relu:activations:0.model_9/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
'model_9/dense_55/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_55_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
model_9/dense_55/BiasAddBiasAdd!model_9/dense_55/MatMul:product:0/model_9/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
model_9/dense_55/ReluRelu!model_9/dense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
&model_9/dense_56/MatMul/ReadVariableOpReadVariableOp/model_9_dense_56_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
model_9/dense_56/MatMulMatMul#model_9/dense_55/Relu:activations:0.model_9/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
'model_9/dense_56/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_56_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
model_9/dense_56/BiasAddBiasAdd!model_9/dense_56/MatMul:product:0/model_9/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
model_9/dense_56/ReluRelu!model_9/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
&model_9/dense_57/MatMul/ReadVariableOpReadVariableOp/model_9_dense_57_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
model_9/dense_57/MatMulMatMul#model_9/dense_56/Relu:activations:0.model_9/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
'model_9/dense_57/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_57_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
model_9/dense_57/BiasAddBiasAdd!model_9/dense_57/MatMul:product:0/model_9/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
model_9/dense_57/ReluRelu!model_9/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
&model_9/dense_58/MatMul/ReadVariableOpReadVariableOp/model_9_dense_58_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
model_9/dense_58/MatMulMatMul#model_9/dense_57/Relu:activations:0.model_9/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
'model_9/dense_58/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_58_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
model_9/dense_58/BiasAddBiasAdd!model_9/dense_58/MatMul:product:0/model_9/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
model_9/dense_58/ReluRelu!model_9/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
&model_9/dense_59/MatMul/ReadVariableOpReadVariableOp/model_9_dense_59_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0?
model_9/dense_59/MatMulMatMul#model_9/dense_58/Relu:activations:0.model_9/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_9/dense_59/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_9/dense_59/BiasAddBiasAdd!model_9/dense_59/MatMul:product:0/model_9/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_9/dense_59/SoftmaxSoftmax!model_9/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model_9/dense_59/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^model_9/conv3d_18/BiasAdd/ReadVariableOp(^model_9/conv3d_18/Conv3D/ReadVariableOp)^model_9/conv3d_19/BiasAdd/ReadVariableOp(^model_9/conv3d_19/Conv3D/ReadVariableOp(^model_9/dense_54/BiasAdd/ReadVariableOp'^model_9/dense_54/MatMul/ReadVariableOp(^model_9/dense_55/BiasAdd/ReadVariableOp'^model_9/dense_55/MatMul/ReadVariableOp(^model_9/dense_56/BiasAdd/ReadVariableOp'^model_9/dense_56/MatMul/ReadVariableOp(^model_9/dense_57/BiasAdd/ReadVariableOp'^model_9/dense_57/MatMul/ReadVariableOp(^model_9/dense_58/BiasAdd/ReadVariableOp'^model_9/dense_58/MatMul/ReadVariableOp(^model_9/dense_59/BiasAdd/ReadVariableOp'^model_9/dense_59/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2T
(model_9/conv3d_18/BiasAdd/ReadVariableOp(model_9/conv3d_18/BiasAdd/ReadVariableOp2R
'model_9/conv3d_18/Conv3D/ReadVariableOp'model_9/conv3d_18/Conv3D/ReadVariableOp2T
(model_9/conv3d_19/BiasAdd/ReadVariableOp(model_9/conv3d_19/BiasAdd/ReadVariableOp2R
'model_9/conv3d_19/Conv3D/ReadVariableOp'model_9/conv3d_19/Conv3D/ReadVariableOp2R
'model_9/dense_54/BiasAdd/ReadVariableOp'model_9/dense_54/BiasAdd/ReadVariableOp2P
&model_9/dense_54/MatMul/ReadVariableOp&model_9/dense_54/MatMul/ReadVariableOp2R
'model_9/dense_55/BiasAdd/ReadVariableOp'model_9/dense_55/BiasAdd/ReadVariableOp2P
&model_9/dense_55/MatMul/ReadVariableOp&model_9/dense_55/MatMul/ReadVariableOp2R
'model_9/dense_56/BiasAdd/ReadVariableOp'model_9/dense_56/BiasAdd/ReadVariableOp2P
&model_9/dense_56/MatMul/ReadVariableOp&model_9/dense_56/MatMul/ReadVariableOp2R
'model_9/dense_57/BiasAdd/ReadVariableOp'model_9/dense_57/BiasAdd/ReadVariableOp2P
&model_9/dense_57/MatMul/ReadVariableOp&model_9/dense_57/MatMul/ReadVariableOp2R
'model_9/dense_58/BiasAdd/ReadVariableOp'model_9/dense_58/BiasAdd/ReadVariableOp2P
&model_9/dense_58/MatMul/ReadVariableOp&model_9/dense_58/MatMul/ReadVariableOp2R
'model_9/dense_59/BiasAdd/ReadVariableOp'model_9/dense_59/BiasAdd/ReadVariableOp2P
&model_9/dense_59/MatMul/ReadVariableOp&model_9/dense_59/MatMul/ReadVariableOp:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
)__inference_model_9_layer_call_fn_3872333
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_3871897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
N
2__inference_zero_padding3d_9_layer_call_fn_3872554

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
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3871704?
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
E__inference_dense_54_layer_call_and_return_conditional_losses_3872664

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_58_layer_call_and_return_conditional_losses_3872744

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
?
)__inference_model_9_layer_call_fn_3871932
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_3871897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?R
?
D__inference_model_9_layer_call_and_return_conditional_losses_3872440
inputs_0
inputs_1F
(conv3d_18_conv3d_readvariableop_resource:7
)conv3d_18_biasadd_readvariableop_resource:F
(conv3d_19_conv3d_readvariableop_resource:7
)conv3d_19_biasadd_readvariableop_resource:9
'dense_54_matmul_readvariableop_resource:,6
(dense_54_biasadd_readvariableop_resource:,9
'dense_55_matmul_readvariableop_resource:,,6
(dense_55_biasadd_readvariableop_resource:,9
'dense_56_matmul_readvariableop_resource:,,6
(dense_56_biasadd_readvariableop_resource:,9
'dense_57_matmul_readvariableop_resource:,,6
(dense_57_biasadd_readvariableop_resource:,9
'dense_58_matmul_readvariableop_resource:,,6
(dense_58_biasadd_readvariableop_resource:,9
'dense_59_matmul_readvariableop_resource:,6
(dense_59_biasadd_readvariableop_resource:
identity?? conv3d_18/BiasAdd/ReadVariableOp?conv3d_18/Conv3D/ReadVariableOp? conv3d_19/BiasAdd/ReadVariableOp?conv3d_19/Conv3D/ReadVariableOp?dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?
zero_padding3d_9/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_9/PadPadinputs_0&zero_padding3d_9/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_18/Conv3D/ReadVariableOpReadVariableOp(conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_18/Conv3DConv3Dzero_padding3d_9/Pad:output:0'conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_18/BiasAdd/ReadVariableOpReadVariableOp)conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_18/BiasAddBiasAddconv3d_18/Conv3D:output:0(conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_18/ReluReluconv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_18/MaxPool3D	MaxPool3Dconv3d_18/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_19/Conv3D/ReadVariableOpReadVariableOp(conv3d_19_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_19/Conv3DConv3D#max_pooling3d_18/MaxPool3D:output:0'conv3d_19/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_19/BiasAdd/ReadVariableOpReadVariableOp)conv3d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_19/BiasAddBiasAddconv3d_19/Conv3D:output:0(conv3d_19/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_19/ReluReluconv3d_19/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_19/MaxPool3D	MaxPool3Dconv3d_19/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_9/ReshapeReshape#max_pooling3d_19/MaxPool3D:output:0flatten_9/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_9/concatConcatV2inputs_1flatten_9/Reshape:output:0"concatenate_9/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0?
dense_54/MatMulMatMulconcatenate_9/concat:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_57/MatMulMatMuldense_56/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0?
dense_59/MatMulMatMuldense_58/Relu:activations:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_59/SoftmaxSoftmaxdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_59/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv3d_18/BiasAdd/ReadVariableOp ^conv3d_18/Conv3D/ReadVariableOp!^conv3d_19/BiasAdd/ReadVariableOp ^conv3d_19/Conv3D/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2D
 conv3d_18/BiasAdd/ReadVariableOp conv3d_18/BiasAdd/ReadVariableOp2B
conv3d_18/Conv3D/ReadVariableOpconv3d_18/Conv3D/ReadVariableOp2D
 conv3d_19/BiasAdd/ReadVariableOp conv3d_19/BiasAdd/ReadVariableOp2B
conv3d_19/Conv3D/ReadVariableOpconv3d_19/Conv3D/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
%__inference_signature_wrapper_3872549
cat
conv%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_3871694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????

_user_specified_namecat:YU
3
_output_shapes!
:?????????

_user_specified_nameconv
?
i
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3872560

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

?
E__inference_dense_59_layer_call_and_return_conditional_losses_3872764

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3871728

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
?
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3872610

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
/__inference_concatenate_9_layer_call_fn_3872637
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
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3871792`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

?
E__inference_dense_57_layer_call_and_return_conditional_losses_3872724

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
E__inference_dense_59_layer_call_and_return_conditional_losses_3871890

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?

?
E__inference_dense_57_layer_call_and_return_conditional_losses_3871856

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3872590

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
??
?"
#__inference__traced_restore_3873140
file_prefix?
!assignvariableop_conv3d_18_kernel:/
!assignvariableop_1_conv3d_18_bias:A
#assignvariableop_2_conv3d_19_kernel:/
!assignvariableop_3_conv3d_19_bias:4
"assignvariableop_4_dense_54_kernel:,.
 assignvariableop_5_dense_54_bias:,4
"assignvariableop_6_dense_55_kernel:,,.
 assignvariableop_7_dense_55_bias:,4
"assignvariableop_8_dense_56_kernel:,,.
 assignvariableop_9_dense_56_bias:,5
#assignvariableop_10_dense_57_kernel:,,/
!assignvariableop_11_dense_57_bias:,5
#assignvariableop_12_dense_58_kernel:,,/
!assignvariableop_13_dense_58_bias:,5
#assignvariableop_14_dense_59_kernel:,/
!assignvariableop_15_dense_59_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: #
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: I
+assignvariableop_25_adam_conv3d_18_kernel_m:7
)assignvariableop_26_adam_conv3d_18_bias_m:I
+assignvariableop_27_adam_conv3d_19_kernel_m:7
)assignvariableop_28_adam_conv3d_19_bias_m:<
*assignvariableop_29_adam_dense_54_kernel_m:,6
(assignvariableop_30_adam_dense_54_bias_m:,<
*assignvariableop_31_adam_dense_55_kernel_m:,,6
(assignvariableop_32_adam_dense_55_bias_m:,<
*assignvariableop_33_adam_dense_56_kernel_m:,,6
(assignvariableop_34_adam_dense_56_bias_m:,<
*assignvariableop_35_adam_dense_57_kernel_m:,,6
(assignvariableop_36_adam_dense_57_bias_m:,<
*assignvariableop_37_adam_dense_58_kernel_m:,,6
(assignvariableop_38_adam_dense_58_bias_m:,<
*assignvariableop_39_adam_dense_59_kernel_m:,6
(assignvariableop_40_adam_dense_59_bias_m:I
+assignvariableop_41_adam_conv3d_18_kernel_v:7
)assignvariableop_42_adam_conv3d_18_bias_v:I
+assignvariableop_43_adam_conv3d_19_kernel_v:7
)assignvariableop_44_adam_conv3d_19_bias_v:<
*assignvariableop_45_adam_dense_54_kernel_v:,6
(assignvariableop_46_adam_dense_54_bias_v:,<
*assignvariableop_47_adam_dense_55_kernel_v:,,6
(assignvariableop_48_adam_dense_55_bias_v:,<
*assignvariableop_49_adam_dense_56_kernel_v:,,6
(assignvariableop_50_adam_dense_56_bias_v:,<
*assignvariableop_51_adam_dense_57_kernel_v:,,6
(assignvariableop_52_adam_dense_57_bias_v:,<
*assignvariableop_53_adam_dense_58_kernel_v:,,6
(assignvariableop_54_adam_dense_58_bias_v:,<
*assignvariableop_55_adam_dense_59_kernel_v:,6
(assignvariableop_56_adam_dense_59_bias_v:
identity_58??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9? 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_18_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_18_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_19_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_19_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_54_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_54_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_55_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_55_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_56_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_56_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_57_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_57_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_58_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_58_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_59_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_59_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv3d_18_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv3d_18_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv3d_19_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv3d_19_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_54_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_54_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_55_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_55_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_56_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_56_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_57_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_57_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_58_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_58_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_59_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_59_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv3d_18_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv3d_18_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv3d_19_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv3d_19_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_54_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_54_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_55_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_55_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_56_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_56_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_57_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_57_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_58_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_58_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_59_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_59_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: ?

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*?
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_56AssignVariableOp_562(
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
E__inference_dense_54_layer_call_and_return_conditional_losses_3871805

inputs0
matmul_readvariableop_resource:,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_55_layer_call_fn_3872673

inputs
unknown:,,
	unknown_0:,
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_3871822o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_18_layer_call_fn_3872585

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
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3871716?
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3871873

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
t
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3871792

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
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?R
?
D__inference_model_9_layer_call_and_return_conditional_losses_3872509
inputs_0
inputs_1F
(conv3d_18_conv3d_readvariableop_resource:7
)conv3d_18_biasadd_readvariableop_resource:F
(conv3d_19_conv3d_readvariableop_resource:7
)conv3d_19_biasadd_readvariableop_resource:9
'dense_54_matmul_readvariableop_resource:,6
(dense_54_biasadd_readvariableop_resource:,9
'dense_55_matmul_readvariableop_resource:,,6
(dense_55_biasadd_readvariableop_resource:,9
'dense_56_matmul_readvariableop_resource:,,6
(dense_56_biasadd_readvariableop_resource:,9
'dense_57_matmul_readvariableop_resource:,,6
(dense_57_biasadd_readvariableop_resource:,9
'dense_58_matmul_readvariableop_resource:,,6
(dense_58_biasadd_readvariableop_resource:,9
'dense_59_matmul_readvariableop_resource:,6
(dense_59_biasadd_readvariableop_resource:
identity?? conv3d_18/BiasAdd/ReadVariableOp?conv3d_18/Conv3D/ReadVariableOp? conv3d_19/BiasAdd/ReadVariableOp?conv3d_19/Conv3D/ReadVariableOp?dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?
zero_padding3d_9/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_9/PadPadinputs_0&zero_padding3d_9/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_18/Conv3D/ReadVariableOpReadVariableOp(conv3d_18_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_18/Conv3DConv3Dzero_padding3d_9/Pad:output:0'conv3d_18/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_18/BiasAdd/ReadVariableOpReadVariableOp)conv3d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_18/BiasAddBiasAddconv3d_18/Conv3D:output:0(conv3d_18/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_18/ReluReluconv3d_18/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_18/MaxPool3D	MaxPool3Dconv3d_18/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_19/Conv3D/ReadVariableOpReadVariableOp(conv3d_19_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_19/Conv3DConv3D#max_pooling3d_18/MaxPool3D:output:0'conv3d_19/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_19/BiasAdd/ReadVariableOpReadVariableOp)conv3d_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_19/BiasAddBiasAddconv3d_19/Conv3D:output:0(conv3d_19/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_19/ReluReluconv3d_19/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_19/MaxPool3D	MaxPool3Dconv3d_19/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_9/ReshapeReshape#max_pooling3d_19/MaxPool3D:output:0flatten_9/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_9/concatConcatV2inputs_1flatten_9/Reshape:output:0"concatenate_9/concat/axis:output:0*
N*
T0*'
_output_shapes
:??????????
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0?
dense_54/MatMulMatMulconcatenate_9/concat:output:0&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_57/MatMulMatMuldense_56/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:,,*
dtype0?
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:,*
dtype0?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,b
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????,?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:,*
dtype0?
dense_59/MatMulMatMuldense_58/Relu:activations:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_59/SoftmaxSoftmaxdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_59/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv3d_18/BiasAdd/ReadVariableOp ^conv3d_18/Conv3D/ReadVariableOp!^conv3d_19/BiasAdd/ReadVariableOp ^conv3d_19/Conv3D/ReadVariableOp ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2D
 conv3d_18/BiasAdd/ReadVariableOp conv3d_18/BiasAdd/ReadVariableOp2B
conv3d_18/Conv3D/ReadVariableOpconv3d_18/Conv3D/ReadVariableOp2D
 conv3d_19/BiasAdd/ReadVariableOp conv3d_19/BiasAdd/ReadVariableOp2B
conv3d_19/Conv3D/ReadVariableOpconv3d_19/Conv3D/ReadVariableOp2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

?
E__inference_dense_55_layer_call_and_return_conditional_losses_3871822

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?:
?
D__inference_model_9_layer_call_and_return_conditional_losses_3872289
conv
cat/
conv3d_18_3872244:
conv3d_18_3872246:/
conv3d_19_3872250:
conv3d_19_3872252:"
dense_54_3872258:,
dense_54_3872260:,"
dense_55_3872263:,,
dense_55_3872265:,"
dense_56_3872268:,,
dense_56_3872270:,"
dense_57_3872273:,,
dense_57_3872275:,"
dense_58_3872278:,,
dense_58_3872280:,"
dense_59_3872283:,
dense_59_3872285:
identity??!conv3d_18/StatefulPartitionedCall?!conv3d_19/StatefulPartitionedCall? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
 zero_padding3d_9/PartitionedCallPartitionedCallconv*
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
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3871704?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_9/PartitionedCall:output:0conv3d_18_3872244conv3d_18_3872246*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3871752?
 max_pooling3d_18/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3871716?
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_18/PartitionedCall:output:0conv3d_19_3872250conv3d_19_3872252*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3871770?
 max_pooling3d_19/PartitionedCallPartitionedCall*conv3d_19/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3871728?
flatten_9/PartitionedCallPartitionedCall)max_pooling3d_19/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_3871783?
concatenate_9/PartitionedCallPartitionedCallcat"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3871792?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0dense_54_3872258dense_54_3872260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_3871805?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_3872263dense_55_3872265*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_3871822?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_3872268dense_56_3872270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_3871839?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_3872273dense_57_3872275*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_3871856?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_3872278dense_58_3872280*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_3871873?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_3872283dense_59_3872285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_3871890x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?:
?
D__inference_model_9_layer_call_and_return_conditional_losses_3872239
conv
cat/
conv3d_18_3872194:
conv3d_18_3872196:/
conv3d_19_3872200:
conv3d_19_3872202:"
dense_54_3872208:,
dense_54_3872210:,"
dense_55_3872213:,,
dense_55_3872215:,"
dense_56_3872218:,,
dense_56_3872220:,"
dense_57_3872223:,,
dense_57_3872225:,"
dense_58_3872228:,,
dense_58_3872230:,"
dense_59_3872233:,
dense_59_3872235:
identity??!conv3d_18/StatefulPartitionedCall?!conv3d_19/StatefulPartitionedCall? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
 zero_padding3d_9/PartitionedCallPartitionedCallconv*
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
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3871704?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_9/PartitionedCall:output:0conv3d_18_3872194conv3d_18_3872196*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3871752?
 max_pooling3d_18/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3871716?
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_18/PartitionedCall:output:0conv3d_19_3872200conv3d_19_3872202*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3871770?
 max_pooling3d_19/PartitionedCallPartitionedCall*conv3d_19/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3871728?
flatten_9/PartitionedCallPartitionedCall)max_pooling3d_19/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_3871783?
concatenate_9/PartitionedCallPartitionedCallcat"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3871792?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0dense_54_3872208dense_54_3872210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_3871805?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_3872213dense_55_3872215*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_3871822?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_3872218dense_56_3872220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_3871839?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_3872223dense_57_3872225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_3871856?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_3872228dense_58_3872230*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_3871873?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_3872233dense_59_3872235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_3871890x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
N
2__inference_max_pooling3d_19_layer_call_fn_3872615

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
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3871728?
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
D__inference_model_9_layer_call_and_return_conditional_losses_3872116

inputs
inputs_1/
conv3d_18_3872071:
conv3d_18_3872073:/
conv3d_19_3872077:
conv3d_19_3872079:"
dense_54_3872085:,
dense_54_3872087:,"
dense_55_3872090:,,
dense_55_3872092:,"
dense_56_3872095:,,
dense_56_3872097:,"
dense_57_3872100:,,
dense_57_3872102:,"
dense_58_3872105:,,
dense_58_3872107:,"
dense_59_3872110:,
dense_59_3872112:
identity??!conv3d_18/StatefulPartitionedCall?!conv3d_19/StatefulPartitionedCall? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
 zero_padding3d_9/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3871704?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_9/PartitionedCall:output:0conv3d_18_3872071conv3d_18_3872073*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3871752?
 max_pooling3d_18/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3871716?
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_18/PartitionedCall:output:0conv3d_19_3872077conv3d_19_3872079*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3871770?
 max_pooling3d_19/PartitionedCallPartitionedCall*conv3d_19/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3871728?
flatten_9/PartitionedCallPartitionedCall)max_pooling3d_19/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_3871783?
concatenate_9/PartitionedCallPartitionedCallinputs_1"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3871792?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0dense_54_3872085dense_54_3872087*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_3871805?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_3872090dense_55_3872092*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_3871822?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_3872095dense_56_3872097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_3871839?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_3872100dense_57_3872102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_3871856?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_3872105dense_58_3872107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_3871873?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_3872110dense_59_3872112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_3871890x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_57_layer_call_fn_3872713

inputs
unknown:,,
	unknown_0:,
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_3871856o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
i
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3871704

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
?
?
+__inference_conv3d_18_layer_call_fn_3872569

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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3871752{
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
?
v
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3872644
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
:?????????W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
)__inference_model_9_layer_call_fn_3872189
conv
cat%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_3872116o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
*__inference_dense_58_layer_call_fn_3872733

inputs
unknown:,,
	unknown_0:,
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_3871873o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?p
?
 __inference__traced_save_3872959
file_prefix/
+savev2_conv3d_18_kernel_read_readvariableop-
)savev2_conv3d_18_bias_read_readvariableop/
+savev2_conv3d_19_kernel_read_readvariableop-
)savev2_conv3d_19_bias_read_readvariableop.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv3d_18_kernel_m_read_readvariableop4
0savev2_adam_conv3d_18_bias_m_read_readvariableop6
2savev2_adam_conv3d_19_kernel_m_read_readvariableop4
0savev2_adam_conv3d_19_bias_m_read_readvariableop5
1savev2_adam_dense_54_kernel_m_read_readvariableop3
/savev2_adam_dense_54_bias_m_read_readvariableop5
1savev2_adam_dense_55_kernel_m_read_readvariableop3
/savev2_adam_dense_55_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop6
2savev2_adam_conv3d_18_kernel_v_read_readvariableop4
0savev2_adam_conv3d_18_bias_v_read_readvariableop6
2savev2_adam_conv3d_19_kernel_v_read_readvariableop4
0savev2_adam_conv3d_19_bias_v_read_readvariableop5
1savev2_adam_dense_54_kernel_v_read_readvariableop3
/savev2_adam_dense_54_bias_v_read_readvariableop5
1savev2_adam_dense_55_kernel_v_read_readvariableop3
/savev2_adam_dense_55_bias_v_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop
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
: ? 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value?B?:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*?
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_18_kernel_read_readvariableop)savev2_conv3d_18_bias_read_readvariableop+savev2_conv3d_19_kernel_read_readvariableop)savev2_conv3d_19_bias_read_readvariableop*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv3d_18_kernel_m_read_readvariableop0savev2_adam_conv3d_18_bias_m_read_readvariableop2savev2_adam_conv3d_19_kernel_m_read_readvariableop0savev2_adam_conv3d_19_bias_m_read_readvariableop1savev2_adam_dense_54_kernel_m_read_readvariableop/savev2_adam_dense_54_bias_m_read_readvariableop1savev2_adam_dense_55_kernel_m_read_readvariableop/savev2_adam_dense_55_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop2savev2_adam_conv3d_18_kernel_v_read_readvariableop0savev2_adam_conv3d_18_bias_v_read_readvariableop2savev2_adam_conv3d_19_kernel_v_read_readvariableop0savev2_adam_conv3d_19_bias_v_read_readvariableop1savev2_adam_dense_54_kernel_v_read_readvariableop/savev2_adam_dense_54_bias_v_read_readvariableop1savev2_adam_dense_55_kernel_v_read_readvariableop/savev2_adam_dense_55_bias_v_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	?
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
?: :::::,:,:,,:,:,,:,:,,:,:,,:,:,:: : : : : : : : : :::::,:,:,,:,:,,:,:,,:,:,,:,:,::::::,:,:,,:,:,,:,:,,:,:,,:,:,:: 2(
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

:,: 

_output_shapes
:,:$ 

_output_shapes

:,,: 

_output_shapes
:,:$	 

_output_shapes

:,,: 


_output_shapes
:,:$ 

_output_shapes

:,,: 

_output_shapes
:,:$ 

_output_shapes

:,,: 

_output_shapes
:,:$ 

_output_shapes

:,: 

_output_shapes
::
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
: :0,
*
_output_shapes
:: 

_output_shapes
::0,
*
_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:,: 

_output_shapes
:,:$  

_output_shapes

:,,: !

_output_shapes
:,:$" 

_output_shapes

:,,: #

_output_shapes
:,:$$ 

_output_shapes

:,,: %

_output_shapes
:,:$& 

_output_shapes

:,,: '

_output_shapes
:,:$( 

_output_shapes

:,: )

_output_shapes
::0*,
*
_output_shapes
:: +

_output_shapes
::0,,
*
_output_shapes
:: -

_output_shapes
::$. 

_output_shapes

:,: /

_output_shapes
:,:$0 

_output_shapes

:,,: 1

_output_shapes
:,:$2 

_output_shapes

:,,: 3

_output_shapes
:,:$4 

_output_shapes

:,,: 5

_output_shapes
:,:$6 

_output_shapes

:,,: 7

_output_shapes
:,:$8 

_output_shapes

:,: 9

_output_shapes
:::

_output_shapes
: 
?:
?
D__inference_model_9_layer_call_and_return_conditional_losses_3871897

inputs
inputs_1/
conv3d_18_3871753:
conv3d_18_3871755:/
conv3d_19_3871771:
conv3d_19_3871773:"
dense_54_3871806:,
dense_54_3871808:,"
dense_55_3871823:,,
dense_55_3871825:,"
dense_56_3871840:,,
dense_56_3871842:,"
dense_57_3871857:,,
dense_57_3871859:,"
dense_58_3871874:,,
dense_58_3871876:,"
dense_59_3871891:,
dense_59_3871893:
identity??!conv3d_18/StatefulPartitionedCall?!conv3d_19/StatefulPartitionedCall? dense_54/StatefulPartitionedCall? dense_55/StatefulPartitionedCall? dense_56/StatefulPartitionedCall? dense_57/StatefulPartitionedCall? dense_58/StatefulPartitionedCall? dense_59/StatefulPartitionedCall?
 zero_padding3d_9/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3871704?
!conv3d_18/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_9/PartitionedCall:output:0conv3d_18_3871753conv3d_18_3871755*
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3871752?
 max_pooling3d_18/PartitionedCallPartitionedCall*conv3d_18/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3871716?
!conv3d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_18/PartitionedCall:output:0conv3d_19_3871771conv3d_19_3871773*
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3871770?
 max_pooling3d_19/PartitionedCallPartitionedCall*conv3d_19/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3871728?
flatten_9/PartitionedCallPartitionedCall)max_pooling3d_19/PartitionedCall:output:0*
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_3871783?
concatenate_9/PartitionedCallPartitionedCallinputs_1"flatten_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3871792?
 dense_54/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0dense_54_3871806dense_54_3871808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_3871805?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_3871823dense_55_3871825*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_55_layer_call_and_return_conditional_losses_3871822?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_3871840dense_56_3871842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_3871839?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_3871857dense_57_3871859*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_3871856?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_3871874dense_58_3871876*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_58_layer_call_and_return_conditional_losses_3871873?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_3871891dense_59_3871893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_3871890x
IdentityIdentity)dense_59/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_18/StatefulPartitionedCall"^conv3d_19/StatefulPartitionedCall!^dense_54/StatefulPartitionedCall!^dense_55/StatefulPartitionedCall!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall!^dense_58/StatefulPartitionedCall!^dense_59/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_18/StatefulPartitionedCall!conv3d_18/StatefulPartitionedCall2F
!conv3d_19/StatefulPartitionedCall!conv3d_19/StatefulPartitionedCall2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_9_layer_call_fn_3872625

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
F__inference_flatten_9_layer_call_and_return_conditional_losses_3871783`
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
?
b
F__inference_flatten_9_layer_call_and_return_conditional_losses_3871783

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
E__inference_dense_55_layer_call_and_return_conditional_losses_3872684

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
?
*__inference_dense_54_layer_call_fn_3872653

inputs
unknown:,
	unknown_0:,
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_54_layer_call_and_return_conditional_losses_3871805o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3872620

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
+__inference_conv3d_19_layer_call_fn_3872599

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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3871770{
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

?
E__inference_dense_56_layer_call_and_return_conditional_losses_3872704

inputs0
matmul_readvariableop_resource:,,-
biasadd_readvariableop_resource:,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:,,*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:,*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????,P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????,a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????,w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3871716

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
?
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3872580

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
?
b
F__inference_flatten_9_layer_call_and_return_conditional_losses_3872631

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
?
?
*__inference_dense_56_layer_call_fn_3872693

inputs
unknown:,,
	unknown_0:,
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_3871839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????,`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
?
)__inference_model_9_layer_call_fn_3872371
inputs_0
inputs_1%
unknown:
	unknown_0:'
	unknown_1:
	unknown_2:
	unknown_3:,
	unknown_4:,
	unknown_5:,,
	unknown_6:,
	unknown_7:,,
	unknown_8:,
	unknown_9:,,

unknown_10:,

unknown_11:,,

unknown_12:,

unknown_13:,

unknown_14:
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
:?????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_9_layer_call_and_return_conditional_losses_3872116o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_dense_59_layer_call_fn_3872753

inputs
unknown:,
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_59_layer_call_and_return_conditional_losses_3871890o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????,: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????,
 
_user_specified_nameinputs
?
?
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3871770

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
serving_default_cat:0?????????
A
conv9
serving_default_conv:0?????????<
dense_590
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
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
)__inference_model_9_layer_call_fn_3871932
)__inference_model_9_layer_call_fn_3872333
)__inference_model_9_layer_call_fn_3872371
)__inference_model_9_layer_call_fn_3872189?
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
D__inference_model_9_layer_call_and_return_conditional_losses_3872440
D__inference_model_9_layer_call_and_return_conditional_losses_3872509
D__inference_model_9_layer_call_and_return_conditional_losses_3872239
D__inference_model_9_layer_call_and_return_conditional_losses_3872289?
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
"__inference__wrapped_model_3871694convcat"?
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
2__inference_zero_padding3d_9_layer_call_fn_3872554?
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
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3872560?
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
.:,2conv3d_18/kernel
:2conv3d_18/bias
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
+__inference_conv3d_18_layer_call_fn_3872569?
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
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3872580?
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
2__inference_max_pooling3d_18_layer_call_fn_3872585?
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
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3872590?
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
.:,2conv3d_19/kernel
:2conv3d_19/bias
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
+__inference_conv3d_19_layer_call_fn_3872599?
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
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3872610?
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
2__inference_max_pooling3d_19_layer_call_fn_3872615?
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
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3872620?
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
+__inference_flatten_9_layer_call_fn_3872625?
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
F__inference_flatten_9_layer_call_and_return_conditional_losses_3872631?
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
/__inference_concatenate_9_layer_call_fn_3872637?
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
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3872644?
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
!:,2dense_54/kernel
:,2dense_54/bias
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
*__inference_dense_54_layer_call_fn_3872653?
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
E__inference_dense_54_layer_call_and_return_conditional_losses_3872664?
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
!:,,2dense_55/kernel
:,2dense_55/bias
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
*__inference_dense_55_layer_call_fn_3872673?
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
E__inference_dense_55_layer_call_and_return_conditional_losses_3872684?
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
!:,,2dense_56/kernel
:,2dense_56/bias
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
*__inference_dense_56_layer_call_fn_3872693?
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
E__inference_dense_56_layer_call_and_return_conditional_losses_3872704?
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
!:,,2dense_57/kernel
:,2dense_57/bias
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
*__inference_dense_57_layer_call_fn_3872713?
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
E__inference_dense_57_layer_call_and_return_conditional_losses_3872724?
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
!:,,2dense_58/kernel
:,2dense_58/bias
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
*__inference_dense_58_layer_call_fn_3872733?
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
E__inference_dense_58_layer_call_and_return_conditional_losses_3872744?
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
!:,2dense_59/kernel
:2dense_59/bias
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
*__inference_dense_59_layer_call_fn_3872753?
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
E__inference_dense_59_layer_call_and_return_conditional_losses_3872764?
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
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_signature_wrapper_3872549catconv"?
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
3:12Adam/conv3d_18/kernel/m
!:2Adam/conv3d_18/bias/m
3:12Adam/conv3d_19/kernel/m
!:2Adam/conv3d_19/bias/m
&:$,2Adam/dense_54/kernel/m
 :,2Adam/dense_54/bias/m
&:$,,2Adam/dense_55/kernel/m
 :,2Adam/dense_55/bias/m
&:$,,2Adam/dense_56/kernel/m
 :,2Adam/dense_56/bias/m
&:$,,2Adam/dense_57/kernel/m
 :,2Adam/dense_57/bias/m
&:$,,2Adam/dense_58/kernel/m
 :,2Adam/dense_58/bias/m
&:$,2Adam/dense_59/kernel/m
 :2Adam/dense_59/bias/m
3:12Adam/conv3d_18/kernel/v
!:2Adam/conv3d_18/bias/v
3:12Adam/conv3d_19/kernel/v
!:2Adam/conv3d_19/bias/v
&:$,2Adam/dense_54/kernel/v
 :,2Adam/dense_54/bias/v
&:$,,2Adam/dense_55/kernel/v
 :,2Adam/dense_55/bias/v
&:$,,2Adam/dense_56/kernel/v
 :,2Adam/dense_56/bias/v
&:$,,2Adam/dense_57/kernel/v
 :,2Adam/dense_57/bias/v
&:$,,2Adam/dense_58/kernel/v
 :,2Adam/dense_58/bias/v
&:$,2Adam/dense_59/kernel/v
 :2Adam/dense_59/bias/v?
"__inference__wrapped_model_3871694? -.GHOPWX_`ghop]?Z
S?P
N?K
*?'
conv?????????
?
cat?????????
? "3?0
.
dense_59"?
dense_59??????????
J__inference_concatenate_9_layer_call_and_return_conditional_losses_3872644?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????
? ?
/__inference_concatenate_9_layer_call_fn_3872637vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "???????????
F__inference_conv3d_18_layer_call_and_return_conditional_losses_3872580t ;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_18_layer_call_fn_3872569g ;?8
1?.
,?)
inputs?????????
? "$?!??????????
F__inference_conv3d_19_layer_call_and_return_conditional_losses_3872610t-.;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_19_layer_call_fn_3872599g-.;?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_dense_54_layer_call_and_return_conditional_losses_3872664\GH/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????,
? }
*__inference_dense_54_layer_call_fn_3872653OGH/?,
%?"
 ?
inputs?????????
? "??????????,?
E__inference_dense_55_layer_call_and_return_conditional_losses_3872684\OP/?,
%?"
 ?
inputs?????????,
? "%?"
?
0?????????,
? }
*__inference_dense_55_layer_call_fn_3872673OOP/?,
%?"
 ?
inputs?????????,
? "??????????,?
E__inference_dense_56_layer_call_and_return_conditional_losses_3872704\WX/?,
%?"
 ?
inputs?????????,
? "%?"
?
0?????????,
? }
*__inference_dense_56_layer_call_fn_3872693OWX/?,
%?"
 ?
inputs?????????,
? "??????????,?
E__inference_dense_57_layer_call_and_return_conditional_losses_3872724\_`/?,
%?"
 ?
inputs?????????,
? "%?"
?
0?????????,
? }
*__inference_dense_57_layer_call_fn_3872713O_`/?,
%?"
 ?
inputs?????????,
? "??????????,?
E__inference_dense_58_layer_call_and_return_conditional_losses_3872744\gh/?,
%?"
 ?
inputs?????????,
? "%?"
?
0?????????,
? }
*__inference_dense_58_layer_call_fn_3872733Ogh/?,
%?"
 ?
inputs?????????,
? "??????????,?
E__inference_dense_59_layer_call_and_return_conditional_losses_3872764\op/?,
%?"
 ?
inputs?????????,
? "%?"
?
0?????????
? }
*__inference_dense_59_layer_call_fn_3872753Oop/?,
%?"
 ?
inputs?????????,
? "???????????
F__inference_flatten_9_layer_call_and_return_conditional_losses_3872631d;?8
1?.
,?)
inputs?????????
? "%?"
?
0?????????
? ?
+__inference_flatten_9_layer_call_fn_3872625W;?8
1?.
,?)
inputs?????????
? "???????????
M__inference_max_pooling3d_18_layer_call_and_return_conditional_losses_3872590?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_18_layer_call_fn_3872585?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_19_layer_call_and_return_conditional_losses_3872620?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_19_layer_call_fn_3872615?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
D__inference_model_9_layer_call_and_return_conditional_losses_3872239? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_9_layer_call_and_return_conditional_losses_3872289? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_model_9_layer_call_and_return_conditional_losses_3872440? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_9_layer_call_and_return_conditional_losses_3872509? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_model_9_layer_call_fn_3871932? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p 

 
? "???????????
)__inference_model_9_layer_call_fn_3872189? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p

 
? "???????????
)__inference_model_9_layer_call_fn_3872333? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
)__inference_model_9_layer_call_fn_3872371? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
%__inference_signature_wrapper_3872549? -.GHOPWX_`ghopg?d
? 
]?Z
$
cat?
cat?????????
2
conv*?'
conv?????????"3?0
.
dense_59"?
dense_59??????????
M__inference_zero_padding3d_9_layer_call_and_return_conditional_losses_3872560?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_zero_padding3d_9_layer_call_fn_3872554?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA?????????????????????????????????????????????