setwd(file.path("C:","Users","Monillas","Desktop","Coursera",
                "Exploratory Data Analysis"))

data <- read.table("household_power_consumption.txt",
                   header=TRUE,sep=";", stringsAsFactors=FALSE)

data2 <- subset(data, Date=="1/2/2007" | Date=="2/2/2007",
                select = Date:Sub_metering_3)

png("plot2.png", width=480, height=480, units="px")

plot(1:2880, as.numeric(data2$Global_active_power), type="l",
     xlab="", ylab="Global Active Power (kilowatts)",xaxt="n")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

dev.off()
