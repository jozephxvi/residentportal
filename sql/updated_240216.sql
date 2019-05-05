--account owner
alter table P_ACCNT_ACT add CONSTRAINT P_ACCNT_ACT_F01 FOREIGN KEY (ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)
alter table P_ACCNT_ATT add CONSTRAINT P_ACCNT_ATT_F01 FOREIGN KEY (ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)
alter table P_ACCNT_NOTE add CONSTRAINT P_ACCNT_NOTE_F01 FOREIGN KEY (ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)

alter table P_ACCNT add CONSTRAINT P_ACCNT_F01 FOREIGN KEY (ADDR_ID) REFERENCES P_ADDR(ROW_ID)

alter table P_ACCNT add CONSTRAINT P_ACCNT_F02 FOREIGN KEY (PAR_ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)
alter table P_ACCNT add CONSTRAINT P_ACCNT_F03 FOREIGN KEY (MASTER_ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)

--residents
alter table P_USER_GROUP add CONSTRAINT P_USER_GROUP_F01 FOREIGN KEY (USER_ID) REFERENCES P_USER(ROW_ID)
alter table P_USER_GROUP add CONSTRAINT P_USER_GROUP_F02 FOREIGN KEY (GROUP_ID) REFERENCES P_GROUP(ROW_ID)

alter table P_USER add CONSTRAINT P_USER_F01 FOREIGN KEY (ADDR_ID) REFERENCES P_ADDR(ROW_ID)
alter table P_USER add CONSTRAINT P_USER_F02 FOREIGN KEY (CACCNT_ID) REFERENCES P_CON_ACCNT(ROW_ID)

--contract
alter table P_CON_ACCNT add CONSTRAINT P_CON_ACCNT_F01 FOREIGN KEY (CON_ID) REFERENCES P_CONTACT(ROW_ID)
alter table P_CON_ACCNT add CONSTRAINT P_CON_ACCNT_F02 FOREIGN KEY (ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)

alter table P_CON_ADDR add CONSTRAINT P_CON_ADDR_F01 FOREIGN KEY (CON_ID) REFERENCES P_CONTACT(ROW_ID)
alter table P_CON_ADDR add CONSTRAINT P_CON_ADDR_F02 FOREIGN KEY (ADDR_ID) REFERENCES P_ADDR(ROW_ID)

--demand
alter table P_DEMAND_LST add CONSTRAINT P_DEMAND_LST_F01 FOREIGN KEY (DL_PROD_ID) REFERENCES P_PROD(ROW_ID)

--group
alter table P_GROUP_ACCESS add CONSTRAINT P_GROUP_ACCESS_F01 FOREIGN KEY (GROUP_ID) REFERENCES P_GROUP(ROW_ID)
alter table P_GROUP_ACCESS add CONSTRAINT P_GROUP_ACCESS_F02 FOREIGN KEY (MODULE_ID) REFERENCES P_MODULE(ROW_ID)

--order
alter table P_ORDER_ACT add CONSTRAINT P_ORDER_ACT_F01 FOREIGN KEY (ORDER_ID) REFERENCES P_ORDER(ROW_ID)
alter table P_ORDER_ATT add CONSTRAINT P_ORDER_ATT_F01 FOREIGN KEY (ORDER_ID) REFERENCES P_ORDER(ROW_ID)

alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F01 FOREIGN KEY (ORDER_ID) REFERENCES P_ORDER(ROW_ID)
alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F02 FOREIGN KEY (PROD_ID) REFERENCES P_PROD(ROW_ID)
--alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F03 FOREIGN KEY (CUST_ID) REFERENCES P_(ROW_ID)
--alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F04 FOREIGN KEY (BILL_ID) REFERENCES P_(ROW_ID)
--alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F05 FOREIGN KEY (SVC_AC_ID) REFERENCES P_(ROW_ID)
--alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F06 FOREIGN KEY (PAR_ORDER_ITEM_ID) REFERENCES P_(ROW_ID)
--alter table P_ORDER_ITEM add CONSTRAINT P_ORDER_ITEM_F07 FOREIGN KEY (ROOT_ORDER_ITEM_ID) REFERENCES P_(ROW_ID)

alter table P_ORDER_ITEM_OM add CONSTRAINT P_ORDER_ITEM_OM_F01 FOREIGN KEY (OM_ORDER_ITEM_ID) REFERENCES P_ORDER_ITEM(ROW_ID)
--alter table P_ORDER_ITEM_OM add CONSTRAINT P_ORDER_ITEM_OM_F02 FOREIGN KEY (OM_PAR_ORDER_ITEM_ID) REFERENCES P_(ROW_ID)

alter table P_ORDER_NOTE add CONSTRAINT P_ORDER_NOTE_F01 FOREIGN KEY (ORDER_ID) REFERENCES P_ORDER(ROW_ID)

--prod
alter table P_PROD_ATTR add CONSTRAINT P_PROD_ATTR_F01 FOREIGN KEY (PROD_ID) REFERENCES P_PROD(ROW_ID)

alter table P_PROD_ITEM add CONSTRAINT P_PROD_ITEM_F01 FOREIGN KEY (PROD_ID) REFERENCES P_PROD(ROW_ID)
--alter table P_PROD_ITEM add CONSTRAINT P_PROD_ITEM_F02 FOREIGN KEY (PAR_ITEM_ID) REFERENCES P_(ROW_ID)
--alter table P_PROD_ITEM add CONSTRAINT P_PROD_ITEM_F03 FOREIGN KEY (ROOT_ITEM_ID) REFERENCES P_(ROW_ID)

alter table P_PROD_OM add CONSTRAINT P_PROD_OM_F01 FOREIGN KEY (OM_ITEM_ID) REFERENCES P_PROD_ITEM(ROW_ID)
--alter table P_PROD_OM add CONSTRAINT P_PROD_OM_F02 FOREIGN KEY (OM_PAR_ITEM_ID) REFERENCES P_(ROW_ID)

--property
alter table P_PROPERTY add CONSTRAINT P_PROPERTY_F01 FOREIGN KEY (ACCNT_ID) REFERENCES P_ACCNT(ROW_ID)

--srv
alter table P_SRV_ACT add CONSTRAINT P_SRV_ACT_F01 FOREIGN KEY (SRV_ID) REFERENCES P_SRV_TIC(ROW_ID)
alter table P_SRV_ATT add CONSTRAINT P_SRV_ATT_F01 FOREIGN KEY (SRV_ID) REFERENCES P_SRV_TIC(ROW_ID)
alter table P_SRV_KEYVAL add CONSTRAINT P_SRV_KEYVAL_F01 FOREIGN KEY (SRV_ID) REFERENCES P_SRV_TIC(ROW_ID)
alter table P_SRV_NOTE add CONSTRAINT P_SRV_NOTE_F01 FOREIGN KEY (SRV_ID) REFERENCES P_SRV_TIC(ROW_ID)

alter table P_SRV_TIC add CONSTRAINT P_SRV_TIC_F01 FOREIGN KEY (CUST_ID) REFERENCES P_ACCNT(ROW_ID)
alter table P_SRV_TIC add CONSTRAINT P_SRV_TIC_F02 FOREIGN KEY (ASSET_ID) REFERENCES P_ASSET(ROW_ID)
--alter table P_SRV_TIC add CONSTRAINT P_SRV_TIC_F03 FOREIGN KEY (CASE_OWNER_ID) REFERENCES P_(ROW_ID)

--asset
alter table P_ASSET_CON add CONSTRAINT P_ASSET_CON_F01 FOREIGN KEY (ASSET_ID) REFERENCES P_ASSET(ROW_ID)
alter table P_ASSET_CON add CONSTRAINT P_ASSET_CON_F02 FOREIGN KEY (CON_ID) REFERENCES P_CON_ACCNT(ROW_ID)
alter table P_ASSET_OM add CONSTRAINT P_ASSET_OM_F01 FOREIGN KEY (OM_ASSET_ID) REFERENCES P_ASSET(ROW_ID)
alter table P_ASSET_OM add CONSTRAINT P_ASSET_OM_F02 FOREIGN KEY (OM_PAR_ASSET_ID) REFERENCES P_ASSET(ROW_ID)

alter table P_ASSET add CONSTRAINT P_ASSET_F01 FOREIGN KEY (PROD_ID) REFERENCES P_PROD(ROW_ID)
alter table P_ASSET add CONSTRAINT P_ASSET_F02 FOREIGN KEY (CUST_ID) REFERENCES P_USER(ROW_ID)
--alter table P_ASSET add CONSTRAINT P_ASSET_F03 FOREIGN KEY (BILL_ID) REFERENCES P_(ROW_ID)
--alter table P_ASSET add CONSTRAINT P_ASSET_F04 FOREIGN KEY (SVC_AC_ID) REFERENCES P_(ROW_ID)
--alter table P_ASSET add CONSTRAINT P_ASSET_F05 FOREIGN KEY (PAR_ASSET_ID) REFERENCES P_(ROW_ID)
--alter table P_ASSET add CONSTRAINT P_ASSET_F06 FOREIGN KEY (ROOT_ASSET_ID) REFERENCES P_(ROW_ID)

--audit
alter table P_AUDIT_TRAIL add CONSTRAINT P_AUDIT_TRAIL_F01 FOREIGN KEY (AUDIT_ROW_ID) REFERENCES P_AUDIT_LOG(ROW_ID)

--client map
--alter table P_CLIENT_MAP add CONSTRAINT P_CLIENT_MAP_F01 FOREIGN KEY (PAIR_DB_ROWID) REFERENCES P_(ROW_ID)

--val
--alter table P_VAL_LST add CONSTRAINT P_VAL_LST_F01 FOREIGN KEY (PAR_VAL_ID) REFERENCES P_(ROW_ID)