#######################################################################################
##                                                                                   ##
##   This is show_privileges_in_role, a script used to find out the list of          ##
##   privilegs a particular role is populated with.                                  ##
##                                                                                   ##
##   This program was originally sponsored by TradingScreen Inc                      ##
##   Information about TS is found at www.tradingscreen.com                          ##
##                                                                                   ##
##   This program was written by Darren Cassar 2009.                                 ##
##   Feedback and improvements are welcome at:                                       ##
##   info [at] securich.com / info [at] mysqlpreacher.com                            ##
##                                                                                   ##
##   THIS PROGRAM IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED             ##
##   WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF            ##
##   MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.                           ##
##                                                                                   ##
##   This program is free software; you can redistribute it and/or modify it under   ##
##   the terms of the GNU General Public License as published by the Free Software   ##
##   Foundation, version 2.                                                          ##
##                                                                                   ##
##   You should have received a copy of the GNU General Public License along with    ##
##   this program; if not, write to the Free Software Foundation, Inc., 59 Temple    ##
##   Place, Suite 330, Boston, MA  02111-1307  USA.                                  ##
##                                                                                   ##
#######################################################################################

USE securich;

DROP PROCEDURE IF EXISTS show_privileges_in_role;

DELIMITER $$

CREATE PROCEDURE `securich`.`show_privileges_in_role`( rolein varchar(64))
  BEGIN

    select distinct PRIVILEGE
    from sec_privileges, sec_ro_pr, sec_roles
    where
    sec_privileges.ID = sec_ro_pr.PR_ID and
    sec_ro_pr.RO_ID=(
         select ID
         from sec_roles
         where ROLE=rolein
    ) order by 1 asc;

  END$$

DELIMITER ;