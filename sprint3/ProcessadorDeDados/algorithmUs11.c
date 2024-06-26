#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>
#include "structs.h"
#include "projectFunctions.h"
#include <time.h>

void algoritmoUs11(Sensor **arraySensor, int numSensores, int d) {
    char serialize[256];
    char * ptrSerialize = serialize;    
    int continuarLoop = 1;
	const char *serialPort = "/dev/ttyS0";  
    const char *outputFile = "infoSensores.txt";
	
	
    while (continuarLoop) {
        
        saveSerialDataToFile(serialPort,outputFile,d);
        int contadorLeitura = 0;
        FILE *arquivo = fopen(outputFile, "r");
		if (arquivo != NULL) {
            char linha[256];
          
		while (fgets(linha, sizeof(linha), arquivo) != NULL && contadorLeitura < d) {                
                int n = 0;    
				int * output = &n;
				extract_token(linha,"sensor_id:",output);
				Sensor* sensor = arraySensor[(*output) - 1];
                insertSensorData(linha, sensor);

                extract_token(linha,"#time:",output);

			if(sensor->numeroValoresLidos != 0){	
				if ( (*output) - sensor->last_received_time  > sensor->timeout) {
				printf("Alerta: Sensor %d ultrapassou o timeout!\n", sensor->sensor_id);
				sensor->isInError = 1;
				}
			}else{	
			sensor-> numeroValoresLidos ++;
			}
			sensor-> last_received_time = (*output);
				
				contadorLeitura++;
           } 
                printf("\n");
			time_t t = time(NULL);
			struct tm tm = *localtime(&t);

			char fileName[50]; 
			sprintf(fileName, "readSensor/%04d%02d%02d%02d%02d%02d_sensors.txt",
            tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
            tm.tm_hour, tm.tm_min, tm.tm_sec);
			
			FILE* fileSerialize = fopen(fileName, "w");                
			if (fileSerialize != NULL) {
					for (int i = 0; i < numSensores; i++) {
						if (arraySensor[i]->isInError == 0 && (arraySensor[i]->numeroValoresLidos != 0 || arraySensor[i]->write_counter != 0)  )
						{
						   calculateMovingMedian(arraySensor[i]);
						   printMovingMedianArray(arraySensor[i]->mediana,arraySensor[i]->elementosMediana);
						   printf("\n");
						}
						
						char* sensorString = buildSensorString(arraySensor[i]);
						arraySensor[i]->numeroValoresLidos = 0;
						fprintf(fileSerialize,"%s\n", sensorString);
						free(sensorString);
					
					}		
                fclose(fileSerialize); // Fechar o ficheiro
               }else {
				fprintf(stderr, "Erro ao abrir o arquivo para escrita\n");
				break;
		        }
        } else {
            fprintf(stderr, "Erro ao abrir o arquivo.\n");
        }	
		
		printf("--------------ITERACÃO DO LOOP FEITA--------------\n");
	}


}

