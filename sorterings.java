/*
Pseudokode:
Man har tal listen: 6,13,8,5,9,3,12
Start:
    1- Vi starter på arraylistens plads 1, som er 13
    2- Derefter tjekker den om værdien fra den tidligere plads er større end den nuværende
    3- Hvis den er større end den nuværende, så bytter den rundt på pladserne, og starter fra step 1, 
    hvis den ikke er større ende den nuværende, går den videre til næste plads og gentager step 2
Slut
*/

public class sorterings{
    public static boolean numberSort(int[] arr, int index1, int index2){
        boolean swapmade = false;
        if(arr[index1] < arr[index2]){
            int temp = arr[index1];
            arr[index1] = arr[index2];
            arr[index2] = temp;
            swapmade = true;
        }
        return swapmade;
    }
    public static void main(String[] args){
        int[] arr = {6,13,8,5,9,3,12};
        for(int n = 1; n < arr.length ; n++){
            if(numberSort(arr, n, n-1)){
                n = 1;
            }
        }
        for(int a : arr){
            System.out.println(a);
        }
    }
}















