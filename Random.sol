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

/* "random" numbers generator (not cryptographicaly secure)
   rand(uint seed) - returns random number generated by seed
   randint() - returns random number with current time as seed
   randbytes(uint size) - returns byte array of random bytes
*/


contract Random {
    /*
     * @dev Generate random uint <= 256^2
     * @param seed 
     * @return uint
     */
    // function rand(uint seed) internal pure returns (uint) {
    //     bytes32 data;
    //     if (seed % 2 == 0){
    //         data = keccak256(bytes32(seed));
    //     }else{
    //         data = keccak256(keccak256(bytes32(seed)));
    //     }
    //     uint sum;
    //     for(uint i;i < 32;i++){
    //         sum += uint(data[i]);
    //     }
    //     return uint(data[sum % data.length])*uint(data[(sum + 2) % data.length]);
    // }
    
    /*
     * @dev Generate random uint <= 256^2 with seed = block.timestamp
     * @return uint
     */
    // function randint() internal view returns(uint) {
    //     return rand(block.timestamp);
    // }
    
    /*
     * @dev Generate random uint in range [a, b]
     * @return uint
     */

    // function randrange(uint a, uint b) internal view returns(uint) {
    //     return a + (randint() % b);
    // }
    
    /*
     * @dev Generate array of random bytes
     * @param size seed
     * @return byte[size]
     */
    // function randbytes(uint size, uint seed) internal pure returns (byte[] memory ) {
    //     byte [] memory data = new byte[](size);
    //     uint x = seed;
    //     for(uint i;i < size;i++){
    //         x = rand(x);
    //         data[i] = byte(x % 256);
    //     }
    //     return data;
    // }
}
