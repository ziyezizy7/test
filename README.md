|||
|---|---|
|**Test ID**|BVT_AppInstanceId|
|**Description**|Check when client fails over to a new client, the previous opened file can be reopened with the same AppInstanceId. |
|**Prerequisites**||
|**Test Execution Steps**|Via NIC1|
||1. Start the first client by sending the following requests: NEGOTIATE; SESSION_SETUP; TREE_CONNECT|
||2. The first client sends CREATE request for exclusive open with SMB2_CREATE_APP_INSTANCE_ID create context.|
||3. The first client sends WRITE request.|
||Via NIC2|
||4. Start the second client by sending the following requests: NEGOTIATE; SESSIONSETUP; TREE_CONNECT|
||5. The second client sends CREATE request for exclusive open with the same SMB2_CREATE_APP_INSTANCE_ID of the first client.|
||6. The second client sends READ request.|
||Via NIC1|
||7. The first client sends another WRITE request.|
||Via NIC2|
||8. Tear down the second client by sending the following requests: CLOSE; TREE_DISCONNECT; LOG_OFF; DISCONNECT|
|**Cleanup**||
