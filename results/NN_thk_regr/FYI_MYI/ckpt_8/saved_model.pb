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
conv3d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_14/kernel
?
$conv3d_14/kernel/Read/ReadVariableOpReadVariableOpconv3d_14/kernel**
_output_shapes
:*
dtype0
t
conv3d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_14/bias
m
"conv3d_14/bias/Read/ReadVariableOpReadVariableOpconv3d_14/bias*
_output_shapes
:*
dtype0
?
conv3d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv3d_15/kernel
?
$conv3d_15/kernel/Read/ReadVariableOpReadVariableOpconv3d_15/kernel**
_output_shapes
:*
dtype0
t
conv3d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv3d_15/bias
m
"conv3d_15/bias/Read/ReadVariableOpReadVariableOpconv3d_15/bias*
_output_shapes
:*
dtype0
z
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&L* 
shared_namedense_42/kernel
s
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes

:&L*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
:L*
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

:LL*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:L*
dtype0
z
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_44/kernel
s
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes

:LL*
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
:L*
dtype0
z
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_45/kernel
s
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes

:LL*
dtype0
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes
:L*
dtype0
z
dense_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL* 
shared_namedense_46/kernel
s
#dense_46/kernel/Read/ReadVariableOpReadVariableOpdense_46/kernel*
_output_shapes

:LL*
dtype0
r
dense_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*
shared_namedense_46/bias
k
!dense_46/bias/Read/ReadVariableOpReadVariableOpdense_46/bias*
_output_shapes
:L*
dtype0
z
dense_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L* 
shared_namedense_47/kernel
s
#dense_47/kernel/Read/ReadVariableOpReadVariableOpdense_47/kernel*
_output_shapes

:L*
dtype0
r
dense_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_47/bias
k
!dense_47/bias/Read/ReadVariableOpReadVariableOpdense_47/bias*
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
Adam/conv3d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_14/kernel/m
?
+Adam/conv3d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_14/bias/m
{
)Adam/conv3d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_15/kernel/m
?
+Adam/conv3d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/kernel/m**
_output_shapes
:*
dtype0
?
Adam/conv3d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_15/bias/m
{
)Adam/conv3d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&L*'
shared_nameAdam/dense_42/kernel/m
?
*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m*
_output_shapes

:&L*
dtype0
?
Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_42/bias/m
y
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes
:L*
dtype0
?
Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_43/kernel/m
?
*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m*
_output_shapes

:LL*
dtype0
?
Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_43/bias/m
y
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes
:L*
dtype0
?
Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_44/kernel/m
?
*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*
_output_shapes

:LL*
dtype0
?
Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_44/bias/m
y
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes
:L*
dtype0
?
Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_45/kernel/m
?
*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes

:LL*
dtype0
?
Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:L*
dtype0
?
Adam/dense_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_46/kernel/m
?
*Adam/dense_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/m*
_output_shapes

:LL*
dtype0
?
Adam/dense_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_46/bias/m
y
(Adam/dense_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/m*
_output_shapes
:L*
dtype0
?
Adam/dense_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*'
shared_nameAdam/dense_47/kernel/m
?
*Adam/dense_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/m*
_output_shapes

:L*
dtype0
?
Adam/dense_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/m
y
(Adam/dense_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv3d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_14/kernel/v
?
+Adam/conv3d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_14/bias/v
{
)Adam/conv3d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_14/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv3d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv3d_15/kernel/v
?
+Adam/conv3d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/kernel/v**
_output_shapes
:*
dtype0
?
Adam/conv3d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv3d_15/bias/v
{
)Adam/conv3d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv3d_15/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&L*'
shared_nameAdam/dense_42/kernel/v
?
*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v*
_output_shapes

:&L*
dtype0
?
Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_42/bias/v
y
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes
:L*
dtype0
?
Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_43/kernel/v
?
*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v*
_output_shapes

:LL*
dtype0
?
Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_43/bias/v
y
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes
:L*
dtype0
?
Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_44/kernel/v
?
*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*
_output_shapes

:LL*
dtype0
?
Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_44/bias/v
y
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes
:L*
dtype0
?
Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_45/kernel/v
?
*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes

:LL*
dtype0
?
Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:L*
dtype0
?
Adam/dense_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:LL*'
shared_nameAdam/dense_46/kernel/v
?
*Adam/dense_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/kernel/v*
_output_shapes

:LL*
dtype0
?
Adam/dense_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:L*%
shared_nameAdam/dense_46/bias/v
y
(Adam/dense_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_46/bias/v*
_output_shapes
:L*
dtype0
?
Adam/dense_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:L*'
shared_nameAdam/dense_47/kernel/v
?
*Adam/dense_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/kernel/v*
_output_shapes

:L*
dtype0
?
Adam/dense_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_47/bias/v
y
(Adam/dense_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_47/bias/v*
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
VARIABLE_VALUEconv3d_14/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_14/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEconv3d_15/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv3d_15/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_42/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_42/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_43/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_43/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_44/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_44/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_45/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_45/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_46/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_46/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_47/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_47/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/conv3d_14/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_14/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_15/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_15/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_46/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_46/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_47/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_47/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_14/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_14/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv3d_15/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv3d_15/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_46/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_46/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_47/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_47/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
v
serving_default_catPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_convPlaceholder*3
_output_shapes!
:?????????*
dtype0*(
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_catserving_default_convconv3d_14/kernelconv3d_14/biasconv3d_15/kernelconv3d_15/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias*
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
%__inference_signature_wrapper_2698334
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv3d_14/kernel/Read/ReadVariableOp"conv3d_14/bias/Read/ReadVariableOp$conv3d_15/kernel/Read/ReadVariableOp"conv3d_15/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOp#dense_46/kernel/Read/ReadVariableOp!dense_46/bias/Read/ReadVariableOp#dense_47/kernel/Read/ReadVariableOp!dense_47/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp+Adam/conv3d_14/kernel/m/Read/ReadVariableOp)Adam/conv3d_14/bias/m/Read/ReadVariableOp+Adam/conv3d_15/kernel/m/Read/ReadVariableOp)Adam/conv3d_15/bias/m/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp*Adam/dense_46/kernel/m/Read/ReadVariableOp(Adam/dense_46/bias/m/Read/ReadVariableOp*Adam/dense_47/kernel/m/Read/ReadVariableOp(Adam/dense_47/bias/m/Read/ReadVariableOp+Adam/conv3d_14/kernel/v/Read/ReadVariableOp)Adam/conv3d_14/bias/v/Read/ReadVariableOp+Adam/conv3d_15/kernel/v/Read/ReadVariableOp)Adam/conv3d_15/bias/v/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOp*Adam/dense_46/kernel/v/Read/ReadVariableOp(Adam/dense_46/bias/v/Read/ReadVariableOp*Adam/dense_47/kernel/v/Read/ReadVariableOp(Adam/dense_47/bias/v/Read/ReadVariableOpConst*H
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
 __inference__traced_save_2698749
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv3d_14/kernelconv3d_14/biasconv3d_15/kernelconv3d_15/biasdense_42/kerneldense_42/biasdense_43/kerneldense_43/biasdense_44/kerneldense_44/biasdense_45/kerneldense_45/biasdense_46/kerneldense_46/biasdense_47/kerneldense_47/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/conv3d_14/kernel/mAdam/conv3d_14/bias/mAdam/conv3d_15/kernel/mAdam/conv3d_15/bias/mAdam/dense_42/kernel/mAdam/dense_42/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/mAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/mAdam/dense_46/kernel/mAdam/dense_46/bias/mAdam/dense_47/kernel/mAdam/dense_47/bias/mAdam/conv3d_14/kernel/vAdam/conv3d_14/bias/vAdam/conv3d_15/kernel/vAdam/conv3d_15/bias/vAdam/dense_42/kernel/vAdam/dense_42/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/vAdam/dense_44/kernel/vAdam/dense_44/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/vAdam/dense_46/kernel/vAdam/dense_46/bias/vAdam/dense_47/kernel/vAdam/dense_47/bias/v*G
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
#__inference__traced_restore_2698936??	
?

?
E__inference_dense_43_layer_call_and_return_conditional_losses_2697610

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?:
?
D__inference_model_7_layer_call_and_return_conditional_losses_2698026
conv
cat/
conv3d_14_2697981:
conv3d_14_2697983:/
conv3d_15_2697987:
conv3d_15_2697989:"
dense_42_2697995:&L
dense_42_2697997:L"
dense_43_2698000:LL
dense_43_2698002:L"
dense_44_2698005:LL
dense_44_2698007:L"
dense_45_2698010:LL
dense_45_2698012:L"
dense_46_2698015:LL
dense_46_2698017:L"
dense_47_2698020:L
dense_47_2698022:
identity??!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?
 zero_padding3d_7/PartitionedCallPartitionedCallconv*
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
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2697492?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_14_2697981conv3d_14_2697983*
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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2697540?
 max_pooling3d_14/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2697504?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_14/PartitionedCall:output:0conv3d_15_2697987conv3d_15_2697989*
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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2697558?
 max_pooling3d_15/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2697516?
flatten_7/PartitionedCallPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
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
F__inference_flatten_7_layer_call_and_return_conditional_losses_2697571?
concatenate_7/PartitionedCallPartitionedCallcat"flatten_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2697580?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_42_2697995dense_42_2697997*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_2697593?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_2698000dense_43_2698002*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_2697610?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_2698005dense_44_2698007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_44_layer_call_and_return_conditional_losses_2697627?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_2698010dense_45_2698012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_45_layer_call_and_return_conditional_losses_2697644?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0dense_46_2698015dense_46_2698017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_46_layer_call_and_return_conditional_losses_2697661?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_2698020dense_47_2698022*
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
E__inference_dense_47_layer_call_and_return_conditional_losses_2697677x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?:
?
D__inference_model_7_layer_call_and_return_conditional_losses_2697684

inputs
inputs_1/
conv3d_14_2697541:
conv3d_14_2697543:/
conv3d_15_2697559:
conv3d_15_2697561:"
dense_42_2697594:&L
dense_42_2697596:L"
dense_43_2697611:LL
dense_43_2697613:L"
dense_44_2697628:LL
dense_44_2697630:L"
dense_45_2697645:LL
dense_45_2697647:L"
dense_46_2697662:LL
dense_46_2697664:L"
dense_47_2697678:L
dense_47_2697680:
identity??!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?
 zero_padding3d_7/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2697492?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_14_2697541conv3d_14_2697543*
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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2697540?
 max_pooling3d_14/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2697504?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_14/PartitionedCall:output:0conv3d_15_2697559conv3d_15_2697561*
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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2697558?
 max_pooling3d_15/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2697516?
flatten_7/PartitionedCallPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
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
F__inference_flatten_7_layer_call_and_return_conditional_losses_2697571?
concatenate_7/PartitionedCallPartitionedCallinputs_1"flatten_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2697580?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_42_2697594dense_42_2697596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_2697593?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_2697611dense_43_2697613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_2697610?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_2697628dense_44_2697630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_44_layer_call_and_return_conditional_losses_2697627?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_2697645dense_45_2697647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_45_layer_call_and_return_conditional_losses_2697644?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0dense_46_2697662dense_46_2697664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_46_layer_call_and_return_conditional_losses_2697661?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_2697678dense_47_2697680*
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
E__inference_dense_47_layer_call_and_return_conditional_losses_2697677x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_dense_47_layer_call_fn_2698538

inputs
unknown:L
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
E__inference_dense_47_layer_call_and_return_conditional_losses_2697677o
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
:?????????L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
?
*__inference_dense_42_layer_call_fn_2698438

inputs
unknown:&L
	unknown_0:L
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_2697593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
)__inference_model_7_layer_call_fn_2697976
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
D__inference_model_7_layer_call_and_return_conditional_losses_2697903o
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
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2698395

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
??
?#
#__inference__traced_restore_2698936
file_prefix?
!assignvariableop_conv3d_14_kernel:/
!assignvariableop_1_conv3d_14_bias:A
#assignvariableop_2_conv3d_15_kernel:/
!assignvariableop_3_conv3d_15_bias:4
"assignvariableop_4_dense_42_kernel:&L.
 assignvariableop_5_dense_42_bias:L4
"assignvariableop_6_dense_43_kernel:LL.
 assignvariableop_7_dense_43_bias:L4
"assignvariableop_8_dense_44_kernel:LL.
 assignvariableop_9_dense_44_bias:L5
#assignvariableop_10_dense_45_kernel:LL/
!assignvariableop_11_dense_45_bias:L5
#assignvariableop_12_dense_46_kernel:LL/
!assignvariableop_13_dense_46_bias:L5
#assignvariableop_14_dense_47_kernel:L/
!assignvariableop_15_dense_47_bias:'
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
+assignvariableop_27_adam_conv3d_14_kernel_m:7
)assignvariableop_28_adam_conv3d_14_bias_m:I
+assignvariableop_29_adam_conv3d_15_kernel_m:7
)assignvariableop_30_adam_conv3d_15_bias_m:<
*assignvariableop_31_adam_dense_42_kernel_m:&L6
(assignvariableop_32_adam_dense_42_bias_m:L<
*assignvariableop_33_adam_dense_43_kernel_m:LL6
(assignvariableop_34_adam_dense_43_bias_m:L<
*assignvariableop_35_adam_dense_44_kernel_m:LL6
(assignvariableop_36_adam_dense_44_bias_m:L<
*assignvariableop_37_adam_dense_45_kernel_m:LL6
(assignvariableop_38_adam_dense_45_bias_m:L<
*assignvariableop_39_adam_dense_46_kernel_m:LL6
(assignvariableop_40_adam_dense_46_bias_m:L<
*assignvariableop_41_adam_dense_47_kernel_m:L6
(assignvariableop_42_adam_dense_47_bias_m:I
+assignvariableop_43_adam_conv3d_14_kernel_v:7
)assignvariableop_44_adam_conv3d_14_bias_v:I
+assignvariableop_45_adam_conv3d_15_kernel_v:7
)assignvariableop_46_adam_conv3d_15_bias_v:<
*assignvariableop_47_adam_dense_42_kernel_v:&L6
(assignvariableop_48_adam_dense_42_bias_v:L<
*assignvariableop_49_adam_dense_43_kernel_v:LL6
(assignvariableop_50_adam_dense_43_bias_v:L<
*assignvariableop_51_adam_dense_44_kernel_v:LL6
(assignvariableop_52_adam_dense_44_bias_v:L<
*assignvariableop_53_adam_dense_45_kernel_v:LL6
(assignvariableop_54_adam_dense_45_bias_v:L<
*assignvariableop_55_adam_dense_46_kernel_v:LL6
(assignvariableop_56_adam_dense_46_bias_v:L<
*assignvariableop_57_adam_dense_47_kernel_v:L6
(assignvariableop_58_adam_dense_47_bias_v:
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
AssignVariableOpAssignVariableOp!assignvariableop_conv3d_14_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv3d_14_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv3d_15_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv3d_15_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_42_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_42_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_43_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_43_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_44_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_44_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_45_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_45_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_46_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_46_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_47_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_47_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv3d_14_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv3d_14_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv3d_15_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv3d_15_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_42_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_42_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_43_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_43_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_44_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_44_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_45_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_45_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_46_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_46_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_47_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_47_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv3d_14_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv3d_14_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv3d_15_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv3d_15_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_42_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_42_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_43_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_43_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_44_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_44_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_45_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_45_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_46_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_46_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_47_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_47_bias_vIdentity_58:output:0"/device:CPU:0*
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
?:
?
D__inference_model_7_layer_call_and_return_conditional_losses_2697903

inputs
inputs_1/
conv3d_14_2697858:
conv3d_14_2697860:/
conv3d_15_2697864:
conv3d_15_2697866:"
dense_42_2697872:&L
dense_42_2697874:L"
dense_43_2697877:LL
dense_43_2697879:L"
dense_44_2697882:LL
dense_44_2697884:L"
dense_45_2697887:LL
dense_45_2697889:L"
dense_46_2697892:LL
dense_46_2697894:L"
dense_47_2697897:L
dense_47_2697899:
identity??!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?
 zero_padding3d_7/PartitionedCallPartitionedCallinputs*
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
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2697492?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_14_2697858conv3d_14_2697860*
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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2697540?
 max_pooling3d_14/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2697504?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_14/PartitionedCall:output:0conv3d_15_2697864conv3d_15_2697866*
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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2697558?
 max_pooling3d_15/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2697516?
flatten_7/PartitionedCallPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
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
F__inference_flatten_7_layer_call_and_return_conditional_losses_2697571?
concatenate_7/PartitionedCallPartitionedCallinputs_1"flatten_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2697580?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_42_2697872dense_42_2697874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_2697593?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_2697877dense_43_2697879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_2697610?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_2697882dense_44_2697884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_44_layer_call_and_return_conditional_losses_2697627?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_2697887dense_45_2697889*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_45_layer_call_and_return_conditional_losses_2697644?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0dense_46_2697892dense_46_2697894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_46_layer_call_and_return_conditional_losses_2697661?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_2697897dense_47_2697899*
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
E__inference_dense_47_layer_call_and_return_conditional_losses_2697677x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:[ W
3
_output_shapes!
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_44_layer_call_and_return_conditional_losses_2698489

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
i
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2698345

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
?
b
F__inference_flatten_7_layer_call_and_return_conditional_losses_2697571

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
?
?
+__inference_conv3d_14_layer_call_fn_2698354

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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2697540{
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
i
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2697504

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
?\
?
"__inference__wrapped_model_2697482
conv
catN
0model_7_conv3d_14_conv3d_readvariableop_resource:?
1model_7_conv3d_14_biasadd_readvariableop_resource:N
0model_7_conv3d_15_conv3d_readvariableop_resource:?
1model_7_conv3d_15_biasadd_readvariableop_resource:A
/model_7_dense_42_matmul_readvariableop_resource:&L>
0model_7_dense_42_biasadd_readvariableop_resource:LA
/model_7_dense_43_matmul_readvariableop_resource:LL>
0model_7_dense_43_biasadd_readvariableop_resource:LA
/model_7_dense_44_matmul_readvariableop_resource:LL>
0model_7_dense_44_biasadd_readvariableop_resource:LA
/model_7_dense_45_matmul_readvariableop_resource:LL>
0model_7_dense_45_biasadd_readvariableop_resource:LA
/model_7_dense_46_matmul_readvariableop_resource:LL>
0model_7_dense_46_biasadd_readvariableop_resource:LA
/model_7_dense_47_matmul_readvariableop_resource:L>
0model_7_dense_47_biasadd_readvariableop_resource:
identity??(model_7/conv3d_14/BiasAdd/ReadVariableOp?'model_7/conv3d_14/Conv3D/ReadVariableOp?(model_7/conv3d_15/BiasAdd/ReadVariableOp?'model_7/conv3d_15/Conv3D/ReadVariableOp?'model_7/dense_42/BiasAdd/ReadVariableOp?&model_7/dense_42/MatMul/ReadVariableOp?'model_7/dense_43/BiasAdd/ReadVariableOp?&model_7/dense_43/MatMul/ReadVariableOp?'model_7/dense_44/BiasAdd/ReadVariableOp?&model_7/dense_44/MatMul/ReadVariableOp?'model_7/dense_45/BiasAdd/ReadVariableOp?&model_7/dense_45/MatMul/ReadVariableOp?'model_7/dense_46/BiasAdd/ReadVariableOp?&model_7/dense_46/MatMul/ReadVariableOp?'model_7/dense_47/BiasAdd/ReadVariableOp?&model_7/dense_47/MatMul/ReadVariableOp?
%model_7/zero_padding3d_7/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
model_7/zero_padding3d_7/PadPadconv.model_7/zero_padding3d_7/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
'model_7/conv3d_14/Conv3D/ReadVariableOpReadVariableOp0model_7_conv3d_14_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
model_7/conv3d_14/Conv3DConv3D%model_7/zero_padding3d_7/Pad:output:0/model_7/conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
(model_7/conv3d_14/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_7/conv3d_14/BiasAddBiasAdd!model_7/conv3d_14/Conv3D:output:00model_7/conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
model_7/conv3d_14/ReluRelu"model_7/conv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
"model_7/max_pooling3d_14/MaxPool3D	MaxPool3D$model_7/conv3d_14/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
'model_7/conv3d_15/Conv3D/ReadVariableOpReadVariableOp0model_7_conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
model_7/conv3d_15/Conv3DConv3D+model_7/max_pooling3d_14/MaxPool3D:output:0/model_7/conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
(model_7/conv3d_15/BiasAdd/ReadVariableOpReadVariableOp1model_7_conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_7/conv3d_15/BiasAddBiasAdd!model_7/conv3d_15/Conv3D:output:00model_7/conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:??????????
model_7/conv3d_15/ReluRelu"model_7/conv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
"model_7/max_pooling3d_15/MaxPool3D	MaxPool3D$model_7/conv3d_15/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
h
model_7/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_7/flatten_7/ReshapeReshape+model_7/max_pooling3d_15/MaxPool3D:output:0 model_7/flatten_7/Const:output:0*
T0*'
_output_shapes
:?????????c
!model_7/concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_7/concatenate_7/concatConcatV2cat"model_7/flatten_7/Reshape:output:0*model_7/concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????&?
&model_7/dense_42/MatMul/ReadVariableOpReadVariableOp/model_7_dense_42_matmul_readvariableop_resource*
_output_shapes

:&L*
dtype0?
model_7/dense_42/MatMulMatMul%model_7/concatenate_7/concat:output:0.model_7/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
'model_7/dense_42/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_42_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
model_7/dense_42/BiasAddBiasAdd!model_7/dense_42/MatMul:product:0/model_7/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
model_7/dense_42/ReluRelu!model_7/dense_42/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
&model_7/dense_43/MatMul/ReadVariableOpReadVariableOp/model_7_dense_43_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
model_7/dense_43/MatMulMatMul#model_7/dense_42/Relu:activations:0.model_7/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
'model_7/dense_43/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_43_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
model_7/dense_43/BiasAddBiasAdd!model_7/dense_43/MatMul:product:0/model_7/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
model_7/dense_43/ReluRelu!model_7/dense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
&model_7/dense_44/MatMul/ReadVariableOpReadVariableOp/model_7_dense_44_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
model_7/dense_44/MatMulMatMul#model_7/dense_43/Relu:activations:0.model_7/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
'model_7/dense_44/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_44_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
model_7/dense_44/BiasAddBiasAdd!model_7/dense_44/MatMul:product:0/model_7/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
model_7/dense_44/ReluRelu!model_7/dense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
&model_7/dense_45/MatMul/ReadVariableOpReadVariableOp/model_7_dense_45_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
model_7/dense_45/MatMulMatMul#model_7/dense_44/Relu:activations:0.model_7/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
'model_7/dense_45/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_45_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
model_7/dense_45/BiasAddBiasAdd!model_7/dense_45/MatMul:product:0/model_7/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
model_7/dense_45/ReluRelu!model_7/dense_45/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
&model_7/dense_46/MatMul/ReadVariableOpReadVariableOp/model_7_dense_46_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
model_7/dense_46/MatMulMatMul#model_7/dense_45/Relu:activations:0.model_7/dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
'model_7/dense_46/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_46_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
model_7/dense_46/BiasAddBiasAdd!model_7/dense_46/MatMul:product:0/model_7/dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
model_7/dense_46/ReluRelu!model_7/dense_46/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
&model_7/dense_47/MatMul/ReadVariableOpReadVariableOp/model_7_dense_47_matmul_readvariableop_resource*
_output_shapes

:L*
dtype0?
model_7/dense_47/MatMulMatMul#model_7/dense_46/Relu:activations:0.model_7/dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_7/dense_47/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_7/dense_47/BiasAddBiasAdd!model_7/dense_47/MatMul:product:0/model_7/dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!model_7/dense_47/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^model_7/conv3d_14/BiasAdd/ReadVariableOp(^model_7/conv3d_14/Conv3D/ReadVariableOp)^model_7/conv3d_15/BiasAdd/ReadVariableOp(^model_7/conv3d_15/Conv3D/ReadVariableOp(^model_7/dense_42/BiasAdd/ReadVariableOp'^model_7/dense_42/MatMul/ReadVariableOp(^model_7/dense_43/BiasAdd/ReadVariableOp'^model_7/dense_43/MatMul/ReadVariableOp(^model_7/dense_44/BiasAdd/ReadVariableOp'^model_7/dense_44/MatMul/ReadVariableOp(^model_7/dense_45/BiasAdd/ReadVariableOp'^model_7/dense_45/MatMul/ReadVariableOp(^model_7/dense_46/BiasAdd/ReadVariableOp'^model_7/dense_46/MatMul/ReadVariableOp(^model_7/dense_47/BiasAdd/ReadVariableOp'^model_7/dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2T
(model_7/conv3d_14/BiasAdd/ReadVariableOp(model_7/conv3d_14/BiasAdd/ReadVariableOp2R
'model_7/conv3d_14/Conv3D/ReadVariableOp'model_7/conv3d_14/Conv3D/ReadVariableOp2T
(model_7/conv3d_15/BiasAdd/ReadVariableOp(model_7/conv3d_15/BiasAdd/ReadVariableOp2R
'model_7/conv3d_15/Conv3D/ReadVariableOp'model_7/conv3d_15/Conv3D/ReadVariableOp2R
'model_7/dense_42/BiasAdd/ReadVariableOp'model_7/dense_42/BiasAdd/ReadVariableOp2P
&model_7/dense_42/MatMul/ReadVariableOp&model_7/dense_42/MatMul/ReadVariableOp2R
'model_7/dense_43/BiasAdd/ReadVariableOp'model_7/dense_43/BiasAdd/ReadVariableOp2P
&model_7/dense_43/MatMul/ReadVariableOp&model_7/dense_43/MatMul/ReadVariableOp2R
'model_7/dense_44/BiasAdd/ReadVariableOp'model_7/dense_44/BiasAdd/ReadVariableOp2P
&model_7/dense_44/MatMul/ReadVariableOp&model_7/dense_44/MatMul/ReadVariableOp2R
'model_7/dense_45/BiasAdd/ReadVariableOp'model_7/dense_45/BiasAdd/ReadVariableOp2P
&model_7/dense_45/MatMul/ReadVariableOp&model_7/dense_45/MatMul/ReadVariableOp2R
'model_7/dense_46/BiasAdd/ReadVariableOp'model_7/dense_46/BiasAdd/ReadVariableOp2P
&model_7/dense_46/MatMul/ReadVariableOp&model_7/dense_46/MatMul/ReadVariableOp2R
'model_7/dense_47/BiasAdd/ReadVariableOp'model_7/dense_47/BiasAdd/ReadVariableOp2P
&model_7/dense_47/MatMul/ReadVariableOp&model_7/dense_47/MatMul/ReadVariableOp:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
+__inference_conv3d_15_layer_call_fn_2698384

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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2697558{
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
?
?
*__inference_dense_44_layer_call_fn_2698478

inputs
unknown:LL
	unknown_0:L
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_44_layer_call_and_return_conditional_losses_2697627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?

?
E__inference_dense_42_layer_call_and_return_conditional_losses_2698449

inputs0
matmul_readvariableop_resource:&L-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&L*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
*__inference_dense_46_layer_call_fn_2698518

inputs
unknown:LL
	unknown_0:L
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_46_layer_call_and_return_conditional_losses_2697661o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
t
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2697580

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
:?????????&W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
i
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2697516

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
G
+__inference_flatten_7_layer_call_fn_2698410

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
F__inference_flatten_7_layer_call_and_return_conditional_losses_2697571`
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

?
E__inference_dense_42_layer_call_and_return_conditional_losses_2697593

inputs0
matmul_readvariableop_resource:&L-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&L*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?

?
E__inference_dense_45_layer_call_and_return_conditional_losses_2698509

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?

?
E__inference_dense_44_layer_call_and_return_conditional_losses_2697627

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?

?
E__inference_dense_46_layer_call_and_return_conditional_losses_2698529

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?s
?
 __inference__traced_save_2698749
file_prefix/
+savev2_conv3d_14_kernel_read_readvariableop-
)savev2_conv3d_14_bias_read_readvariableop/
+savev2_conv3d_15_kernel_read_readvariableop-
)savev2_conv3d_15_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop.
*savev2_dense_46_kernel_read_readvariableop,
(savev2_dense_46_bias_read_readvariableop.
*savev2_dense_47_kernel_read_readvariableop,
(savev2_dense_47_bias_read_readvariableop(
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
2savev2_adam_conv3d_14_kernel_m_read_readvariableop4
0savev2_adam_conv3d_14_bias_m_read_readvariableop6
2savev2_adam_conv3d_15_kernel_m_read_readvariableop4
0savev2_adam_conv3d_15_bias_m_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableop5
1savev2_adam_dense_46_kernel_m_read_readvariableop3
/savev2_adam_dense_46_bias_m_read_readvariableop5
1savev2_adam_dense_47_kernel_m_read_readvariableop3
/savev2_adam_dense_47_bias_m_read_readvariableop6
2savev2_adam_conv3d_14_kernel_v_read_readvariableop4
0savev2_adam_conv3d_14_bias_v_read_readvariableop6
2savev2_adam_conv3d_15_kernel_v_read_readvariableop4
0savev2_adam_conv3d_15_bias_v_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableop5
1savev2_adam_dense_46_kernel_v_read_readvariableop3
/savev2_adam_dense_46_bias_v_read_readvariableop5
1savev2_adam_dense_47_kernel_v_read_readvariableop3
/savev2_adam_dense_47_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv3d_14_kernel_read_readvariableop)savev2_conv3d_14_bias_read_readvariableop+savev2_conv3d_15_kernel_read_readvariableop)savev2_conv3d_15_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop*savev2_dense_46_kernel_read_readvariableop(savev2_dense_46_bias_read_readvariableop*savev2_dense_47_kernel_read_readvariableop(savev2_dense_47_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop2savev2_adam_conv3d_14_kernel_m_read_readvariableop0savev2_adam_conv3d_14_bias_m_read_readvariableop2savev2_adam_conv3d_15_kernel_m_read_readvariableop0savev2_adam_conv3d_15_bias_m_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop1savev2_adam_dense_46_kernel_m_read_readvariableop/savev2_adam_dense_46_bias_m_read_readvariableop1savev2_adam_dense_47_kernel_m_read_readvariableop/savev2_adam_dense_47_bias_m_read_readvariableop2savev2_adam_conv3d_14_kernel_v_read_readvariableop0savev2_adam_conv3d_14_bias_v_read_readvariableop2savev2_adam_conv3d_15_kernel_v_read_readvariableop0savev2_adam_conv3d_15_bias_v_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableop1savev2_adam_dense_46_kernel_v_read_readvariableop/savev2_adam_dense_46_bias_v_read_readvariableop1savev2_adam_dense_47_kernel_v_read_readvariableop/savev2_adam_dense_47_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :::::&L:L:LL:L:LL:L:LL:L:LL:L:L:: : : : : : : : : : : :::::&L:L:LL:L:LL:L:LL:L:LL:L:L::::::&L:L:LL:L:LL:L:LL:L:LL:L:L:: 2(
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
?

?
E__inference_dense_45_layer_call_and_return_conditional_losses_2697644

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?Q
?
D__inference_model_7_layer_call_and_return_conditional_losses_2698226
inputs_0
inputs_1F
(conv3d_14_conv3d_readvariableop_resource:7
)conv3d_14_biasadd_readvariableop_resource:F
(conv3d_15_conv3d_readvariableop_resource:7
)conv3d_15_biasadd_readvariableop_resource:9
'dense_42_matmul_readvariableop_resource:&L6
(dense_42_biasadd_readvariableop_resource:L9
'dense_43_matmul_readvariableop_resource:LL6
(dense_43_biasadd_readvariableop_resource:L9
'dense_44_matmul_readvariableop_resource:LL6
(dense_44_biasadd_readvariableop_resource:L9
'dense_45_matmul_readvariableop_resource:LL6
(dense_45_biasadd_readvariableop_resource:L9
'dense_46_matmul_readvariableop_resource:LL6
(dense_46_biasadd_readvariableop_resource:L9
'dense_47_matmul_readvariableop_resource:L6
(dense_47_biasadd_readvariableop_resource:
identity?? conv3d_14/BiasAdd/ReadVariableOp?conv3d_14/Conv3D/ReadVariableOp? conv3d_15/BiasAdd/ReadVariableOp?conv3d_15/Conv3D/ReadVariableOp?dense_42/BiasAdd/ReadVariableOp?dense_42/MatMul/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?dense_43/MatMul/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?
zero_padding3d_7/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_7/PadPadinputs_0&zero_padding3d_7/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_14/Conv3D/ReadVariableOpReadVariableOp(conv3d_14_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_14/Conv3DConv3Dzero_padding3d_7/Pad:output:0'conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_14/BiasAdd/ReadVariableOpReadVariableOp)conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_14/BiasAddBiasAddconv3d_14/Conv3D:output:0(conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_14/ReluReluconv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_14/MaxPool3D	MaxPool3Dconv3d_14/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_15/Conv3DConv3D#max_pooling3d_14/MaxPool3D:output:0'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_15/ReluReluconv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_15/MaxPool3D	MaxPool3Dconv3d_15/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_7/ReshapeReshape#max_pooling3d_15/MaxPool3D:output:0flatten_7/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_7/concatConcatV2inputs_1flatten_7/Reshape:output:0"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????&?
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:&L*
dtype0?
dense_42/MatMulMatMulconcatenate_7/concat:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_45/MatMulMatMuldense_44/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_45/ReluReludense_45/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_46/MatMulMatMuldense_45/Relu:activations:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:L*
dtype0?
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_47/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2D
 conv3d_14/BiasAdd/ReadVariableOp conv3d_14/BiasAdd/ReadVariableOp2B
conv3d_14/Conv3D/ReadVariableOpconv3d_14/Conv3D/ReadVariableOp2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_dense_45_layer_call_fn_2698498

inputs
unknown:LL
	unknown_0:L
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_45_layer_call_and_return_conditional_losses_2697644o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?	
?
E__inference_dense_47_layer_call_and_return_conditional_losses_2697677

inputs0
matmul_readvariableop_resource:L-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:L*
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
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?

?
E__inference_dense_43_layer_call_and_return_conditional_losses_2698469

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?Q
?
D__inference_model_7_layer_call_and_return_conditional_losses_2698294
inputs_0
inputs_1F
(conv3d_14_conv3d_readvariableop_resource:7
)conv3d_14_biasadd_readvariableop_resource:F
(conv3d_15_conv3d_readvariableop_resource:7
)conv3d_15_biasadd_readvariableop_resource:9
'dense_42_matmul_readvariableop_resource:&L6
(dense_42_biasadd_readvariableop_resource:L9
'dense_43_matmul_readvariableop_resource:LL6
(dense_43_biasadd_readvariableop_resource:L9
'dense_44_matmul_readvariableop_resource:LL6
(dense_44_biasadd_readvariableop_resource:L9
'dense_45_matmul_readvariableop_resource:LL6
(dense_45_biasadd_readvariableop_resource:L9
'dense_46_matmul_readvariableop_resource:LL6
(dense_46_biasadd_readvariableop_resource:L9
'dense_47_matmul_readvariableop_resource:L6
(dense_47_biasadd_readvariableop_resource:
identity?? conv3d_14/BiasAdd/ReadVariableOp?conv3d_14/Conv3D/ReadVariableOp? conv3d_15/BiasAdd/ReadVariableOp?conv3d_15/Conv3D/ReadVariableOp?dense_42/BiasAdd/ReadVariableOp?dense_42/MatMul/ReadVariableOp?dense_43/BiasAdd/ReadVariableOp?dense_43/MatMul/ReadVariableOp?dense_44/BiasAdd/ReadVariableOp?dense_44/MatMul/ReadVariableOp?dense_45/BiasAdd/ReadVariableOp?dense_45/MatMul/ReadVariableOp?dense_46/BiasAdd/ReadVariableOp?dense_46/MatMul/ReadVariableOp?dense_47/BiasAdd/ReadVariableOp?dense_47/MatMul/ReadVariableOp?
zero_padding3d_7/Pad/paddingsConst*
_output_shapes

:*
dtype0*A
value8B6"(                                     ?
zero_padding3d_7/PadPadinputs_0&zero_padding3d_7/Pad/paddings:output:0*
T0*3
_output_shapes!
:??????????
conv3d_14/Conv3D/ReadVariableOpReadVariableOp(conv3d_14_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_14/Conv3DConv3Dzero_padding3d_7/Pad:output:0'conv3d_14/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_14/BiasAdd/ReadVariableOpReadVariableOp)conv3d_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_14/BiasAddBiasAddconv3d_14/Conv3D:output:0(conv3d_14/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_14/ReluReluconv3d_14/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_14/MaxPool3D	MaxPool3Dconv3d_14/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
?
conv3d_15/Conv3D/ReadVariableOpReadVariableOp(conv3d_15_conv3d_readvariableop_resource**
_output_shapes
:*
dtype0?
conv3d_15/Conv3DConv3D#max_pooling3d_14/MaxPool3D:output:0'conv3d_15/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????*
paddingSAME*
strides	
?
 conv3d_15/BiasAdd/ReadVariableOpReadVariableOp)conv3d_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv3d_15/BiasAddBiasAddconv3d_15/Conv3D:output:0(conv3d_15/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:?????????p
conv3d_15/ReluReluconv3d_15/BiasAdd:output:0*
T0*3
_output_shapes!
:??????????
max_pooling3d_15/MaxPool3D	MaxPool3Dconv3d_15/Relu:activations:0*
T0*3
_output_shapes!
:?????????*
ksize	
*
paddingSAME*
strides	
`
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_7/ReshapeReshape#max_pooling3d_15/MaxPool3D:output:0flatten_7/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_7/concatConcatV2inputs_1flatten_7/Reshape:output:0"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????&?
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes

:&L*
dtype0?
dense_42/MatMulMatMulconcatenate_7/concat:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_42/ReluReludense_42/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_43/MatMulMatMuldense_42/Relu:activations:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_43/ReluReludense_43/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_44/MatMulMatMuldense_43/Relu:activations:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_44/ReluReludense_44/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_45/MatMulMatMuldense_44/Relu:activations:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_45/ReluReludense_45/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_46/MatMul/ReadVariableOpReadVariableOp'dense_46_matmul_readvariableop_resource*
_output_shapes

:LL*
dtype0?
dense_46/MatMulMatMuldense_45/Relu:activations:0&dense_46/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????L?
dense_46/BiasAdd/ReadVariableOpReadVariableOp(dense_46_biasadd_readvariableop_resource*
_output_shapes
:L*
dtype0?
dense_46/BiasAddBiasAdddense_46/MatMul:product:0'dense_46/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lb
dense_46/ReluReludense_46/BiasAdd:output:0*
T0*'
_output_shapes
:?????????L?
dense_47/MatMul/ReadVariableOpReadVariableOp'dense_47_matmul_readvariableop_resource*
_output_shapes

:L*
dtype0?
dense_47/MatMulMatMuldense_46/Relu:activations:0&dense_47/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_47/BiasAdd/ReadVariableOpReadVariableOp(dense_47_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_47/BiasAddBiasAdddense_47/MatMul:product:0'dense_47/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_47/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv3d_14/BiasAdd/ReadVariableOp ^conv3d_14/Conv3D/ReadVariableOp!^conv3d_15/BiasAdd/ReadVariableOp ^conv3d_15/Conv3D/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp ^dense_46/BiasAdd/ReadVariableOp^dense_46/MatMul/ReadVariableOp ^dense_47/BiasAdd/ReadVariableOp^dense_47/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2D
 conv3d_14/BiasAdd/ReadVariableOp conv3d_14/BiasAdd/ReadVariableOp2B
conv3d_14/Conv3D/ReadVariableOpconv3d_14/Conv3D/ReadVariableOp2D
 conv3d_15/BiasAdd/ReadVariableOp conv3d_15/BiasAdd/ReadVariableOp2B
conv3d_15/Conv3D/ReadVariableOpconv3d_15/Conv3D/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2B
dense_46/BiasAdd/ReadVariableOpdense_46/BiasAdd/ReadVariableOp2@
dense_46/MatMul/ReadVariableOpdense_46/MatMul/ReadVariableOp2B
dense_47/BiasAdd/ReadVariableOpdense_47/BiasAdd/ReadVariableOp2@
dense_47/MatMul/ReadVariableOpdense_47/MatMul/ReadVariableOp:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_dense_43_layer_call_fn_2698458

inputs
unknown:LL
	unknown_0:L
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_2697610o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????L`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
N
2__inference_max_pooling3d_14_layer_call_fn_2698370

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
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2697504?
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
D__inference_model_7_layer_call_and_return_conditional_losses_2698076
conv
cat/
conv3d_14_2698031:
conv3d_14_2698033:/
conv3d_15_2698037:
conv3d_15_2698039:"
dense_42_2698045:&L
dense_42_2698047:L"
dense_43_2698050:LL
dense_43_2698052:L"
dense_44_2698055:LL
dense_44_2698057:L"
dense_45_2698060:LL
dense_45_2698062:L"
dense_46_2698065:LL
dense_46_2698067:L"
dense_47_2698070:L
dense_47_2698072:
identity??!conv3d_14/StatefulPartitionedCall?!conv3d_15/StatefulPartitionedCall? dense_42/StatefulPartitionedCall? dense_43/StatefulPartitionedCall? dense_44/StatefulPartitionedCall? dense_45/StatefulPartitionedCall? dense_46/StatefulPartitionedCall? dense_47/StatefulPartitionedCall?
 zero_padding3d_7/PartitionedCallPartitionedCallconv*
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
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2697492?
!conv3d_14/StatefulPartitionedCallStatefulPartitionedCall)zero_padding3d_7/PartitionedCall:output:0conv3d_14_2698031conv3d_14_2698033*
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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2697540?
 max_pooling3d_14/PartitionedCallPartitionedCall*conv3d_14/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2697504?
!conv3d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling3d_14/PartitionedCall:output:0conv3d_15_2698037conv3d_15_2698039*
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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2697558?
 max_pooling3d_15/PartitionedCallPartitionedCall*conv3d_15/StatefulPartitionedCall:output:0*
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
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2697516?
flatten_7/PartitionedCallPartitionedCall)max_pooling3d_15/PartitionedCall:output:0*
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
F__inference_flatten_7_layer_call_and_return_conditional_losses_2697571?
concatenate_7/PartitionedCallPartitionedCallcat"flatten_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2697580?
 dense_42/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0dense_42_2698045dense_42_2698047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_42_layer_call_and_return_conditional_losses_2697593?
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_2698050dense_43_2698052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_43_layer_call_and_return_conditional_losses_2697610?
 dense_44/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0dense_44_2698055dense_44_2698057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_44_layer_call_and_return_conditional_losses_2697627?
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_2698060dense_45_2698062*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_45_layer_call_and_return_conditional_losses_2697644?
 dense_46/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0dense_46_2698065dense_46_2698067*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????L*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_46_layer_call_and_return_conditional_losses_2697661?
 dense_47/StatefulPartitionedCallStatefulPartitionedCall)dense_46/StatefulPartitionedCall:output:0dense_47_2698070dense_47_2698072*
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
E__inference_dense_47_layer_call_and_return_conditional_losses_2697677x
IdentityIdentity)dense_47/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv3d_14/StatefulPartitionedCall"^conv3d_15/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall!^dense_44/StatefulPartitionedCall!^dense_45/StatefulPartitionedCall!^dense_46/StatefulPartitionedCall!^dense_47/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????:?????????: : : : : : : : : : : : : : : : 2F
!conv3d_14/StatefulPartitionedCall!conv3d_14/StatefulPartitionedCall2F
!conv3d_15/StatefulPartitionedCall!conv3d_15/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2D
 dense_46/StatefulPartitionedCall dense_46/StatefulPartitionedCall2D
 dense_47/StatefulPartitionedCall dense_47/StatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
?
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2697558

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
2__inference_max_pooling3d_15_layer_call_fn_2698400

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
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2697516?
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
[
/__inference_concatenate_7_layer_call_fn_2698422
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
:?????????&* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2697580`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
i
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2697492

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
E__inference_dense_46_layer_call_and_return_conditional_losses_2697661

inputs0
matmul_readvariableop_resource:LL-
biasadd_readvariableop_resource:L
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:LL*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Lr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:L*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????LP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????La
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Lw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?	
?
E__inference_dense_47_layer_call_and_return_conditional_losses_2698548

inputs0
matmul_readvariableop_resource:L-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:L*
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
:?????????L: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????L
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_2698334
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
"__inference__wrapped_model_2697482o
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
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????

_user_specified_namecat:YU
3
_output_shapes!
:?????????

_user_specified_nameconv
?
i
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2698405

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
?
)__inference_model_7_layer_call_fn_2698158
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
D__inference_model_7_layer_call_and_return_conditional_losses_2697903o
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
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
)__inference_model_7_layer_call_fn_2698120
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
D__inference_model_7_layer_call_and_return_conditional_losses_2697684o
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
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
3
_output_shapes!
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2698365

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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2697540

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
2__inference_zero_padding3d_7_layer_call_fn_2698339

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
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2697492?
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
v
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2698429
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
:?????????&W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????&"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
b
F__inference_flatten_7_layer_call_and_return_conditional_losses_2698416

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
?
)__inference_model_7_layer_call_fn_2697719
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
D__inference_model_7_layer_call_and_return_conditional_losses_2697684o
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
R:?????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
3
_output_shapes!
:?????????

_user_specified_nameconv:LH
'
_output_shapes
:?????????

_user_specified_namecat
?
i
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2698375

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
serving_default_cat:0?????????
A
conv9
serving_default_conv:0?????????<
dense_470
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
)__inference_model_7_layer_call_fn_2697719
)__inference_model_7_layer_call_fn_2698120
)__inference_model_7_layer_call_fn_2698158
)__inference_model_7_layer_call_fn_2697976?
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
D__inference_model_7_layer_call_and_return_conditional_losses_2698226
D__inference_model_7_layer_call_and_return_conditional_losses_2698294
D__inference_model_7_layer_call_and_return_conditional_losses_2698026
D__inference_model_7_layer_call_and_return_conditional_losses_2698076?
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
"__inference__wrapped_model_2697482convcat"?
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
2__inference_zero_padding3d_7_layer_call_fn_2698339?
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
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2698345?
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
.:,2conv3d_14/kernel
:2conv3d_14/bias
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
+__inference_conv3d_14_layer_call_fn_2698354?
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
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2698365?
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
2__inference_max_pooling3d_14_layer_call_fn_2698370?
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
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2698375?
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
.:,2conv3d_15/kernel
:2conv3d_15/bias
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
+__inference_conv3d_15_layer_call_fn_2698384?
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
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2698395?
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
2__inference_max_pooling3d_15_layer_call_fn_2698400?
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
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2698405?
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
+__inference_flatten_7_layer_call_fn_2698410?
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
F__inference_flatten_7_layer_call_and_return_conditional_losses_2698416?
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
/__inference_concatenate_7_layer_call_fn_2698422?
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
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2698429?
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
!:&L2dense_42/kernel
:L2dense_42/bias
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
*__inference_dense_42_layer_call_fn_2698438?
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
E__inference_dense_42_layer_call_and_return_conditional_losses_2698449?
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
!:LL2dense_43/kernel
:L2dense_43/bias
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
*__inference_dense_43_layer_call_fn_2698458?
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
E__inference_dense_43_layer_call_and_return_conditional_losses_2698469?
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
!:LL2dense_44/kernel
:L2dense_44/bias
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
*__inference_dense_44_layer_call_fn_2698478?
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
E__inference_dense_44_layer_call_and_return_conditional_losses_2698489?
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
!:LL2dense_45/kernel
:L2dense_45/bias
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
*__inference_dense_45_layer_call_fn_2698498?
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
E__inference_dense_45_layer_call_and_return_conditional_losses_2698509?
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
!:LL2dense_46/kernel
:L2dense_46/bias
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
*__inference_dense_46_layer_call_fn_2698518?
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
E__inference_dense_46_layer_call_and_return_conditional_losses_2698529?
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
!:L2dense_47/kernel
:2dense_47/bias
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
*__inference_dense_47_layer_call_fn_2698538?
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
E__inference_dense_47_layer_call_and_return_conditional_losses_2698548?
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
%__inference_signature_wrapper_2698334catconv"?
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
3:12Adam/conv3d_14/kernel/m
!:2Adam/conv3d_14/bias/m
3:12Adam/conv3d_15/kernel/m
!:2Adam/conv3d_15/bias/m
&:$&L2Adam/dense_42/kernel/m
 :L2Adam/dense_42/bias/m
&:$LL2Adam/dense_43/kernel/m
 :L2Adam/dense_43/bias/m
&:$LL2Adam/dense_44/kernel/m
 :L2Adam/dense_44/bias/m
&:$LL2Adam/dense_45/kernel/m
 :L2Adam/dense_45/bias/m
&:$LL2Adam/dense_46/kernel/m
 :L2Adam/dense_46/bias/m
&:$L2Adam/dense_47/kernel/m
 :2Adam/dense_47/bias/m
3:12Adam/conv3d_14/kernel/v
!:2Adam/conv3d_14/bias/v
3:12Adam/conv3d_15/kernel/v
!:2Adam/conv3d_15/bias/v
&:$&L2Adam/dense_42/kernel/v
 :L2Adam/dense_42/bias/v
&:$LL2Adam/dense_43/kernel/v
 :L2Adam/dense_43/bias/v
&:$LL2Adam/dense_44/kernel/v
 :L2Adam/dense_44/bias/v
&:$LL2Adam/dense_45/kernel/v
 :L2Adam/dense_45/bias/v
&:$LL2Adam/dense_46/kernel/v
 :L2Adam/dense_46/bias/v
&:$L2Adam/dense_47/kernel/v
 :2Adam/dense_47/bias/v?
"__inference__wrapped_model_2697482? -.GHOPWX_`ghop]?Z
S?P
N?K
*?'
conv?????????
?
cat?????????
? "3?0
.
dense_47"?
dense_47??????????
J__inference_concatenate_7_layer_call_and_return_conditional_losses_2698429?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????&
? ?
/__inference_concatenate_7_layer_call_fn_2698422vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "??????????&?
F__inference_conv3d_14_layer_call_and_return_conditional_losses_2698365t ;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_14_layer_call_fn_2698354g ;?8
1?.
,?)
inputs?????????
? "$?!??????????
F__inference_conv3d_15_layer_call_and_return_conditional_losses_2698395t-.;?8
1?.
,?)
inputs?????????
? "1?.
'?$
0?????????
? ?
+__inference_conv3d_15_layer_call_fn_2698384g-.;?8
1?.
,?)
inputs?????????
? "$?!??????????
E__inference_dense_42_layer_call_and_return_conditional_losses_2698449\GH/?,
%?"
 ?
inputs?????????&
? "%?"
?
0?????????L
? }
*__inference_dense_42_layer_call_fn_2698438OGH/?,
%?"
 ?
inputs?????????&
? "??????????L?
E__inference_dense_43_layer_call_and_return_conditional_losses_2698469\OP/?,
%?"
 ?
inputs?????????L
? "%?"
?
0?????????L
? }
*__inference_dense_43_layer_call_fn_2698458OOP/?,
%?"
 ?
inputs?????????L
? "??????????L?
E__inference_dense_44_layer_call_and_return_conditional_losses_2698489\WX/?,
%?"
 ?
inputs?????????L
? "%?"
?
0?????????L
? }
*__inference_dense_44_layer_call_fn_2698478OWX/?,
%?"
 ?
inputs?????????L
? "??????????L?
E__inference_dense_45_layer_call_and_return_conditional_losses_2698509\_`/?,
%?"
 ?
inputs?????????L
? "%?"
?
0?????????L
? }
*__inference_dense_45_layer_call_fn_2698498O_`/?,
%?"
 ?
inputs?????????L
? "??????????L?
E__inference_dense_46_layer_call_and_return_conditional_losses_2698529\gh/?,
%?"
 ?
inputs?????????L
? "%?"
?
0?????????L
? }
*__inference_dense_46_layer_call_fn_2698518Ogh/?,
%?"
 ?
inputs?????????L
? "??????????L?
E__inference_dense_47_layer_call_and_return_conditional_losses_2698548\op/?,
%?"
 ?
inputs?????????L
? "%?"
?
0?????????
? }
*__inference_dense_47_layer_call_fn_2698538Oop/?,
%?"
 ?
inputs?????????L
? "???????????
F__inference_flatten_7_layer_call_and_return_conditional_losses_2698416d;?8
1?.
,?)
inputs?????????
? "%?"
?
0?????????
? ?
+__inference_flatten_7_layer_call_fn_2698410W;?8
1?.
,?)
inputs?????????
? "???????????
M__inference_max_pooling3d_14_layer_call_and_return_conditional_losses_2698375?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_14_layer_call_fn_2698370?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
M__inference_max_pooling3d_15_layer_call_and_return_conditional_losses_2698405?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_max_pooling3d_15_layer_call_fn_2698400?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA??????????????????????????????????????????????
D__inference_model_7_layer_call_and_return_conditional_losses_2698026? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_7_layer_call_and_return_conditional_losses_2698076? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_model_7_layer_call_and_return_conditional_losses_2698226? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_7_layer_call_and_return_conditional_losses_2698294? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_model_7_layer_call_fn_2697719? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p 

 
? "???????????
)__inference_model_7_layer_call_fn_2697976? -.GHOPWX_`ghope?b
[?X
N?K
*?'
conv?????????
?
cat?????????
p

 
? "???????????
)__inference_model_7_layer_call_fn_2698120? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
)__inference_model_7_layer_call_fn_2698158? -.GHOPWX_`ghopn?k
d?a
W?T
.?+
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
%__inference_signature_wrapper_2698334? -.GHOPWX_`ghopg?d
? 
]?Z
$
cat?
cat?????????
2
conv*?'
conv?????????"3?0
.
dense_47"?
dense_47??????????
M__inference_zero_padding3d_7_layer_call_and_return_conditional_losses_2698345?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "U?R
K?H
0A?????????????????????????????????????????????
? ?
2__inference_zero_padding3d_7_layer_call_fn_2698339?_?\
U?R
P?M
inputsA?????????????????????????????????????????????
? "H?EA?????????????????????????????????????????????