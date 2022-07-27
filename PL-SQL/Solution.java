class Solution {
    public static void main(String[] args) {
        int nums[] ={-1,-1,-1,-1,-1,0};
        System.out.println(pivotIndex(nums));
    }

    public static int pivotIndex(int[] nums) {

        int sumL = 0;
        int sumD = 0;
        for (int i = 0, j = nums.length - 1; i < nums.length - 1; i++, j--) {
            sumL += nums[i];
            sumD += nums[j];
        }
        if (sumD == 0) {
            return 0;
        }
        if (sumL == 0) {
            return nums.length - 1;
        }
        sumL = nums[0];
        sumD = nums[nums.length - 1];
        int count = 2;
        int i = 1;
        int j = nums.length - 2;

        while (count != nums.length) {

            if (sumL == sumD) {

                if (count == nums.length - 1) {
                    return i;
                } else {
                    sumL += nums[i];
                    i++;
                    sumD += nums[j];
                    j--;
                    count += 2;
                    continue;
                }
            }

            if (sumL < sumD) {
                sumL += nums[i];
                i++;
            } else {
                sumD += nums[j];
                j--;
            }
            count++;

        }

        return -1;

    }

}