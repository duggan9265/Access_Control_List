 # PL SGMII v2021.1

## **Design Summary**

This project utilizes AXI 1G/2.5G Ethernet Subsystem configured for SGMII. This has been routed to the SFP cage on SFP1 for use on a ZCU102 board. System is configured to use the ZCU102 si570 at 156.25MHz. Added to the fabric is an access control list entity that passes/rejects ethernet frames based on a specific rule set.

---

## **Required Hardware**

- ZCU102
- SFP module supporting SGMII

---

## **Build Instructions**

1. Clone the repository into C:\ACL_Garden
2. Create directory called 'temp'.
3. Open Vivado.
4. Run tcl command: cd C:\ACL_Garden\Access_Control_List\temp
5. Run tcl command: set_param ips.skipXCIRecreateIP 0 (for Vivado 2023.2).
6. Run tcl command: source ../build/build_acl.tcl

---