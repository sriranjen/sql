// increase order
public class QuickSort {
    public static void main(String[] args) {
        int[] arr = {5, 2, 9, 1, 5, 6};
        quickSort(arr, 0, arr.length - 1);
        System.out.println("Sorted array:");
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }

    public static void quickSort(int[] arr, int low, int high) {
        if (low < high) {
            int pivotIndex = partition(arr, low, high);
            quickSort(arr, low, pivotIndex - 1);
            quickSort(arr, pivotIndex + 1, high);
        }
    }

    public static int partition(int[] arr, int low, int high) {
        int pivot = arr[high];
        int i = low - 1;
        for (int j = low; j < high; j++) {
            if (arr[j] < pivot) {
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        int temp = arr[i + 1];

        // decerease order
        public class QuickSort {
    public static void main(String[] args) {
        int[] arr = {5, 2, 9, 1, 5, 6};
        quick(arr, 0, arr.length - 1);
        System.out.println("Sorted array in decreasing order:");
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }

    public static int partition(int arr[], int low, int high) {
        int pivot = arr[high];
        int i = low - 1;
        for (int j = low; j < high; j++) {
            // Compare elements to pivot for decreasing order
            if (arr[j] > pivot) {
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        int temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;
        return i + 1;
    }

    public static void quick(int arr[], int low, int high) {
        if (low < high) {
            int pivotindex = partition(arr, low, high);
            // Swap the positions of recursive calls for decreasing order
            quick(arr, low, pivotindex - 1);
            quick(arr, pivotindex + 1, high);
        }
    }
}

        arr[i + 1] = arr[high];
        arr[high] = temp;
        return i + 1;
    }
}
