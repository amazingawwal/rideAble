-- CreateTable
CREATE TABLE "public"."Password" (
    "id" SERIAL NOT NULL,
    "hashedPassword" TEXT NOT NULL,
    "passengerId" INTEGER NOT NULL,

    CONSTRAINT "Password_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "public"."Password" ADD CONSTRAINT "Password_passengerId_fkey" FOREIGN KEY ("passengerId") REFERENCES "public"."Passenger"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
