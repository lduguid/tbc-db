DELETE FROM command WHERE `name` IN ('debug setvalue','debug getvalue');
DELETE FROM command WHERE `name` IN ('debug setvaluebyindex','debug setvaluebyname','debug getvaluebyindex','debug getvaluebyname');
INSERT INTO command (`name`, `security`, `help`) VALUES
('debug setvaluebyindex', 3, 'Syntax: .debug setvaluebyindex #field [int|hex|bit|float] #value\r\n\r\nSet the field index #field (integer) of the selected target to value #value. If no target is selected, set the content of your field.\r\n\r\nUse type arg for set input format: int (decimal number), hex (hex value), bit (bitstring), float. By default expect integer input format.'),
('debug setvaluebyname', 3, 'Syntax: .debug setvaluebyname #fieldname #values\r\n\r\nSet the field name #fieldname (string) of the selected target to value #values. If no target is selected, set the content of your field.'),
('debug getvaluebyindex', 3, 'Syntax: .debug getvaluebyindex #field [int|hex|bit|float]\r\n\r\nGet the field index #field (integer) of the selected target. If no target is selected, get the content of your field.\r\n\r\nUse type arg for set output format: int (decimal number), hex (hex value), bit (bitstring), float. By default use integer output.'),
('debug getvaluebyname', 3, 'Syntax: .debug getvaluebyname #fieldname\r\n\r\nGet the field name #fieldname (string) of the selected target. If no target is selected, get the content of your field.');


