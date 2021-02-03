pragma solidity 0.7.5;

/*
#    Copyright (C) 2017  alianse777

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/**
*    WARNING: These functions are used to perform low-level memory access
*    and may cause security risk when used improperly.
*/

contract STDMemory {
    
    // Memory uint[] pointer functions
    /** @dev Returns memory address of uint[] object
    * @param data is an uint[] array to referrence
    * @return ptr - pointer to array
    */
    function m_ref_uint(uint[] memory data) internal pure returns (uint ptr) {
        assembly {
            let retptr := data
            ptr := retptr
        }
    }
    
    /** @dev Returns dereferrenced array
    * @param ptr size 
    * @return array of given size
    */
    function m_unref_uint(uint ptr, uint size) internal pure returns(uint[] memory) {
        uint [] memory data = new uint[](size);
        assembly {
            data := ptr
        }
        return data;
    }
    
    /** @dev Used to test memory pointers
    * @return true - OK, false - error
    */
    function m_test_uint() internal pure returns (bool) {
        uint [] memory dt = new uint[](3);
        for(uint i = 0;i < dt.length;i++) {
            dt[i] = i;
        }
        uint wptr = m_ref_uint(dt);
        uint [] memory data;
        data = m_unref_uint(wptr, 3);
        return data.length == 3 && data[0] == 0 &&data[1] == 1 && data[2] == 2;
    }
    
    // Memory int [] pointer functions
    /** @dev Returns memory address of int[] object
    * @param data is an int[] array to referrence
    * @return ptr pointer to array
    */
    function m_ref_int(int[] memory data) internal pure returns (uint ptr) {
        assembly {
            let retptr := data
            ptr := retptr
        }
    }
    
    /** @dev Returns dereferrenced array
    * @param ptr size
    * @return array of given size
    */
    function m_unref_int(uint ptr, uint size) internal pure returns(int[] memory) {
        int [] memory data = new int[](size);
        assembly {
            data := ptr
        }
        return data;
    }
    
    /** @dev Used to test memory pointers
    * @return true - OK, false - error
    */
    function m_test_int() internal pure returns (bool) {
        int [] memory dt = new int[](3);
        for(uint i = 0;i < dt.length;i++) {
            dt[i] = int(i);
        }
        uint wptr = m_ref_int(dt);
        int [] memory data;
        data = m_unref_int(wptr, 3);
        return data.length == 3 && data[0] == 0 && data[1] == 1 && data[2] == 2;
    }
}
