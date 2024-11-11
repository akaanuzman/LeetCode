/**
 * @param {number[]} nums
 * @return {boolean}
 */
var primeSubOperation = function(nums) {
    function generatePrimes(max) {
        const sieve = Array(max + 1).fill(true);
        sieve[0] = sieve[1] = false;
        for (let i = 2; i * i <= max; i++) {
            if (sieve[i]) {
                for (let j = i * i; j <= max; j += i) {
                    sieve[j] = false;
                }
            }
        }
        const primes = [];
        for (let i = 2; i <= max; i++) {
            if (sieve[i]) {
                primes.push(i);
            }
        }
        return primes;
    }

    function isSorted(nums) {
        for (let i = 1; i < nums.length; i++) {
            if (nums[i] <= nums[i - 1]) {
                return false;
            }
        }
        return true;
    }

    const maxNum = Math.max(...nums);
    const primes = generatePrimes(maxNum);

    for (let i = 0; i < nums.length; i++) {
        for (let j = primes.length - 1; j >= 0; j--) {
            const p = primes[j];
            if (p < nums[i] && (i === 0 || (nums[i] - p) > nums[i - 1])) {
                nums[i] -= p;
                break;
            }
        }
    }

    return isSorted(nums);
};